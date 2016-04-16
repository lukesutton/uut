public struct Mixin: StyleComponent {
  let properties: [Property]
  let children: [Style]
}

public struct MixinCollection: StyleComponent {
  let mixins: [Mixin]
}

public func styleMixin(components: MixinComponent...) -> Mixin {
  let extracted = extractComponents(components)
  return Mixin(properties: extracted.properties, children: extracted.children)
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
