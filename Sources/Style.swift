public struct Style: StyleComponent {
  let query: MediaQueryStatement?
  let selector: SelectorStatement
  let properties: [Property]
  let children: [Style]
  let mixins: [Mixin]
  let extensions: [StyleExtension]

  public init(_ selector: SelectorStatementConvertible, query: MediaQueryStatementConvertible? = nil, mixins: [Mixin] = [], extensions: [StyleExtension] =  [], _ components: StyleComponent...) {
    let components = extractComponents(components)
    self.init(selector, query: query, mixins: mixins, extensions: extensions, properties: components.properties, children: components.children)
  }

  public init(_ selector: SelectorStatementConvertible, properties: [Property], children: [Style]) {
    self.init(selector, query: nil, mixins: [], extensions: [], properties: properties, children: children)
  }

  public init(_ selector: SelectorStatementConvertible, query: MediaQueryStatementConvertible? = nil, mixins: [Mixin], extensions: [StyleExtension], properties: [Property], children: [Style]) {
    self.selector = selector.selectorStatement
    self.query = query?.mediaQueryStatement
    self.mixins = mixins
    self.extensions = extensions

    self.children = children
    self.properties = properties
  }

  func prependSelector(selector: SelectorStatementConvertible) -> Style {
    return Style(
      selector.selectorStatement |+ self.selector,
      query: self.query,
      mixins: self.mixins,
      extensions: self.extensions,
      properties: self.properties,
      children: self.children
    )
  }
}

internal func extractComponents(components: [StyleComponent]) -> (children: [Style], properties: [Property]) {
  var properties = [Property]()
  var children = [Style]()

  for component in components {
    switch component {
      case let property as Property:
        properties.append(property)
      case let style as Style:
        children.append(style)
      default:
        // A no-op, since cases must be exhaustive, but we only handle the three
        // known conforming types.
        false
    }
  }

  return (children: children, properties: properties)
}
