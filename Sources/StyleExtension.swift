public struct StyleExtension {
  let properties: [Property]
  let children: [Style]

  public init(properties: [Property], children: [Style]) {
    self.properties = properties
    self.children = children
  }

  public init(properties: [Property]) {
    self.properties = properties
    self.children = []
  }

  public init(children: [Style]) {
    self.properties = []
    self.children = children
  }
}

extension StyleExtension: Hashable {
  public var hashValue: Int {
    return "\(self.properties)\(self.children)".hashValue
  }
}

public func ==(lhs: StyleExtension, rhs: StyleExtension) -> Bool {
  return lhs.hashValue == rhs.hashValue
}
