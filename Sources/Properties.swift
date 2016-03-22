public struct Properties {
  private init() {}

  public struct BackgroundImage: Property, SimpleProperty, StyleComponent {
    public let label = "background-image"
    public let value: String

    public init(_ value: String) {
      self.value = value
    }
  }
}
