public struct Mixin: StyleComponent {
  let properties: [Property]
  let children: [Style]

  public init(_ components: StyleComponent...) {
    let components = extractComponents(components)
    self.init(properties: components.properties, children: components.children)
  }

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
