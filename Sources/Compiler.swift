public struct Compiler {
  public typealias InitialFunc = ([Style] -> [Style])
  public typealias IntermediateFunc = ([IntermediateStyle] -> [IntermediateStyle])
  public typealias PostFunc = (String -> String)

  let initial: [InitialFunc]
  let intermediate: [IntermediateFunc]
  let post: [PostFunc]

  public init(initial: [InitialFunc] = [], intermediate: [IntermediateFunc] = [], post: [PostFunc] = []) {
    self.initial = initial
    self.intermediate = intermediate
    self.post = post
  }

  func compile(style: Style) -> String {
    return compile([style])
  }

  public func compile(package: StylePackage) -> String {
    return compile(package.styles)
  }

  public func compile(styles: [Style]) -> String {
    let initialStyles = self.initial.reduce(styles) {$1($0)}
    let simpleStyles = flatten(initialStyles)
    let intermediateSyles = self.intermediate.reduce(simpleStyles) {$1($0)}

    let buffer: [String] = intermediateSyles.reduce([]) {memo, style in
      let props: [String] = style.properties.reduce([]) {memo, prop in
        let pairs = prop.allValues.map { (label, value) in
          return "  \(label): \(value);"
        }
        return memo + pairs
      }
      return memo + ["\(style.selector.stringValue) {"] + props + ["}"]
    }

    let output = buffer.joinWithSeparator("\r\n")
    let postStyles = self.post.reduce(output) {$1($0)}

    return postStyles
  }

  private func flatten(styles: [Style], output: [IntermediateStyle] = []) -> [IntermediateStyle] {
    return styles.reduce(output) {memo, style in
      let props = style.properties.map { prop in
        return IntermediateProperty(original: prop)
      }
      let simple = IntermediateStyle(selector: style.selector, properties: props)
      return [simple] + flatten(style.children, output: memo)
    }
  }
}
