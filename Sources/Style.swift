public struct Style: StyleComponent {
  let selector: SelectorStatement
  let query: MediaQueryStatement?
  let properties: [Property]
  let children: [Style]
  let mixins: [StyleMixin]
  let extensions: [StyleExtension]

  func prependSelector(selector: SelectorStatementConvertible) -> Style {
    return Style(
      selector: selector.selectorStatement |+ self.selector,
      query: self.query,
      properties: self.properties,
      children: self.children,
      mixins: self.mixins,
      extensions: self.extensions
    )
  }
}

public func extends(extensions: StyleExtension...) -> StyleComponent {
  return ExtensionCollection(extensions: extensions)
}

public func mixesIn(mixins: StyleMixin...) -> StyleComponent  {
  return MixinCollection(mixins: mixins)
}

public func style(selector: SelectorStatementConvertible, _ components: StyleComponent...) -> Style {
  let extracted = extractComponents(components)
  return Style(
    selector: selector.selectorStatement,
    query: nil,
    properties: extracted.properties,
    children: extracted.children,
    mixins: extracted.mixins,
    extensions: extracted.extensions
  )
}

internal func extractComponents(components: [StyleComponent]) -> (children: [Style], properties: [Property], mixins: [StyleMixin], extensions: [StyleExtension]) {
  var properties = [Property]()
  var children = [Style]()
  var mixins = [StyleMixin]()
  var extensions = [StyleExtension]()

  for component in components {
    switch component {
      case let property as Property:
        properties.append(property)
      case let style as Style:
        children.append(style)
      case let collection as MixinCollection:
        mixins.appendContentsOf(collection.mixins)
      case let collection as ExtensionCollection:
        extensions.appendContentsOf(collection.extensions)
      default:
        // A no-op, since cases must be exhaustive, but we only handle the three
        // known conforming types.
        false
    }
  }

  return (children: children, properties: properties, mixins: mixins, extensions: extensions)
}
