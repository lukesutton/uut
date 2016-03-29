public struct Style: StyleComponent {
  let selector: SelectorStatement
  let properties: [Property]
  let children: [Style]

  public init(_ selector: SelectorStatementConvertible, _ components: StyleComponent...) {
    let statement = selector.selectorStatement
    self.selector = statement

    let components = extractComponents(components)
    self.properties = components.properties
    self.children = components.children.map {$0.prependSelector(statement)}
  }

  public init(_ selector: SelectorStatementConvertible, children: [Style], properties: [Property]) {
    self.selector = selector.selectorStatement
    self.children = children
    self.properties = properties
  }

  func prependSelector(selector: SelectorStatement) -> Style {
    return Style(selector |+ self.selector, children: self.children, properties: self.properties)
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
      case let mixin as Mixin:
        children.appendContentsOf(mixin.children)
        properties.appendContentsOf(mixin.properties)
      default:
        // A no-op, since cases must be exhaustive, but we only handle the three
        // known conforming types.
        false
    }
  }

  return (properties: properties, children: children)
}
