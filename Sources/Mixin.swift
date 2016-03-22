public struct Mixin: StyleComponent {
  let properties: [Property]
  let children: [Style]

  public init(_ components: StyleComponent...) {
    let components = extractComponents(components)
    self.properties = components.properties
    self.children = components.children
  }
}
