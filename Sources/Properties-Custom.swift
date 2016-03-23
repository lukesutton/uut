extension Properties {
  public struct Custom: Property, SimpleProperty, StyleComponent {
    public let label: String
    public let value: String

    public init(_ label: String, _ value: String) {
      self.label = label
      self.value = value
    }
  }
}
