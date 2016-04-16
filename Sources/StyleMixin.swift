public struct StyleMixin: StyleComponent {
  let properties: [Property]
  let children: [Style]
}

public struct MixinCollection: StyleComponent {
  let mixins: [StyleMixin]
}

public func styleMixin(components: MixinComponent...) -> StyleMixin {
  let extracted = extractComponents(components)
  return StyleMixin(properties: extracted.properties, children: extracted.children)
}

public protocol MixinComponent {}
extension Style: MixinComponent {}
extension Property: MixinComponent {}

internal func extractComponents(components: [MixinComponent]) -> (children: [Style], properties: [Property]) {
  var properties = [Property]()
  var children = [Style]()

  for component in components {
    switch component {
      case let property as Property:
        properties.append(property)
      case let style as Style:
        children.append(style)
      default:
        false
    }
  }

  return (children: children, properties: properties)
}
