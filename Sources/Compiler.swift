import Foundation

public struct Compiler {
  public typealias InitialFunc = ([Style] -> [Style])
  public typealias IntermediateFunc = (IntermediateCollection -> IntermediateCollection)
  public typealias PostFunc = (String -> String)

  let initial: [InitialFunc]
  let intermediate: [IntermediateFunc]
  let post: [PostFunc]

  public init(initial: [InitialFunc] = [], intermediate: [IntermediateFunc] = [], post: [PostFunc] = []) {
    self.initial = initial
    self.intermediate = intermediate
    self.post = post
  }

  public func compile(style: Style) -> String {
    return compile([style])
  }

  public func compile(package: StylePackage) -> String {
    return compile(package.styles)
  }

  public func compile(styles: [Style]) -> String {
    // Process initial, unflattened styles
    let initialStyles = self.initial.reduce(styles) {$1($0)}
    let extensionStyles = self.extractExtensions(initialStyles)

    // Generate intermediate styles, then pass them through middleware
    let simpleStyles = IntermediateCollection(flatten(extensionStyles + initialStyles))
    let intermediateSyles = self.intermediate.reduce(simpleStyles) {$1($0)}

    // Split results into styles with and without media queries, then compile them
    let split = splitStyles(intermediateSyles.styles)
    let standardCompile = compileStyles(split.standard)
    let queryCompile = split.queries.reduce([]) { memo, kv in
      return memo + ["@media \(kv.0.stringValue) {"] + compileStyles(kv.1, indentLevel: 1) + ["}"]
    }

    // Join the resulting arrays into one big string, then pass to the post
    // middleware
    let output = (standardCompile + queryCompile).joinWithSeparator("\r\n")
    let postStyles = self.post.reduce(output) {$1($0)}

    return postStyles
  }

  private func compileStyles(styles: [IntermediateStyle], indentLevel: Int = 0) -> [String] {
    let indent = String(count: indentLevel * 2, repeatedValue: Character(" "))

    let buffer: [String] = styles.reduce([]) {memo, style in
      let props: [String] = style.properties.reduce([]) {memo, prop in
        let pairs = prop.allValues.map { (label, value) in
          return indent + "  \(label): \(value);"
        }
        return memo + pairs
      }
      return memo + [indent + "\(style.selector.stringValue) {"] + props + [indent + "}"]
    }

    return buffer
  }

  private func splitStyles(styles: [IntermediateStyle]) -> (standard: [IntermediateStyle], queries: [MediaQueryStatement: [IntermediateStyle]]) {
    let noMediaQueries = styles.filter {$0.query == nil}
    let hasMediaQueries = styles.filter {$0.query != nil}
    let mediaQueries: [MediaQueryStatement: [IntermediateStyle]] = hasMediaQueries.reduce([:]) { memo, style in
      guard let query = style.query else { return memo }
      let entry = memo[query]
      let update = (entry ?? []) + [style]
      return memo.merge([query: update])
    }

    return (standard: noMediaQueries, queries: mediaQueries)
  }

  private func extractExtensions(styles: [Style]) -> [Style] {
    let extensions = styles.flatMap { style in
      return style.extensions.map {($0, style)}
    }

    let grouped: [StyleExtension: [Style]] = extensions.reduce([:]) { memo, pair in
      let entry = memo[pair.0]
      let update = (entry ?? []) + [pair.1]
      return memo.merge([pair.0: update])
    }

    return grouped.map {ext, styles in
      let selector = styles.reduce(SelectorStatement(components: [])) { memo, style in
        if memo.components.isEmpty {
          return style.selector
        }
        else {
          return memo |& style.selector
        }
      }

      return Style(
        selector: selector,
        query: nil,
        properties: ext.properties,
        children: ext.children,
        mixins: [],
        extensions: []
      )
    }
  }

  private func flatten(styles: [Style]) -> [IntermediateStyle] {
    return styles.reduce([]) { memo, style in
      let props = style.mixins.flatMap {$0.properties} + style.properties
      let simple = IntermediateStyle(selector: style.selector, properties: props, query: style.query)
      let mixinChildren = style.mixins.flatMap {$0.children.map {$0.prependSelector(style.selector)}}
      let children = style.children.map {$0.prependSelector(style.selector)}
      return memo + [simple] + flatten(mixinChildren + children)
    }
  }
}

extension Array {
  func groupBy<G: Hashable>(predicate: (Element) -> G) -> [G: [Element]] {
    var dictionary = [G: [Element]]()

    for element in self {
      let key = predicate(element)
      var array: [Element]? = dictionary[key]

      if (array == nil) {
        array = [Element]()
      }

      array!.append(element)
      dictionary[key] = array!
    }

    return dictionary
  }
}

extension Dictionary {
  func merge(dictionary: Dictionary<Key, Value>) -> Dictionary<Key, Value> {
    var output = self
    for (key, value) in dictionary {
      output[key] = value
    }

    return output
  }
}
