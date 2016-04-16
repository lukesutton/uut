public struct StyleExtension {
  let properties: [Property]
  let children: [Style]
}

extension StyleExtension: Hashable {
  public var hashValue: Int {
    return "\(self.properties)\(self.children)".hashValue
  }
}

public func ==(lhs: StyleExtension, rhs: StyleExtension) -> Bool {
  return lhs.hashValue == rhs.hashValue
}

public struct ExtensionCollection: StyleComponent {
  let extensions: [StyleExtension]
}

public func styleExtension(components: ExtensionComponent...) -> StyleExtension {
  let extracted = extractComponents(components)
  return StyleExtension(properties: extracted.properties, children: extracted.children)
}

public protocol ExtensionComponent {}
extension Style: ExtensionComponent {}
extension Property: ExtensionComponent {}

internal func extractComponents(components: [ExtensionComponent]) -> (children: [Style], properties: [Property]) {
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
