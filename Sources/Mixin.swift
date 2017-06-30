public struct Mixin {
  let description: String?
  let block: ([Property]) -> [Property]

  public init(description: String? = nil, block: @escaping ([Property]) -> [Property]) {
    self.description = description
    self.block = block
  }
}

extension Mixin {
  public init(description: String? = nil, properties: [Property]) {
    self.description = description
    self.block = { ps in
      return ps + properties
    }
  }
}

func merge(mixins: [Mixin]?, into properties: [Property]) -> [Property] {
  if let mixins = mixins {
    return mixins.reduce(properties) { $1.block($0) }
  }
  else {
    return properties
  }
}
