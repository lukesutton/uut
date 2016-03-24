extension Properties {
  public struct Color: Property, SimpleProperty, StyleComponent {
    public let label = "color"
    public let value: String

    public init(_ value: Color) {
      self.value = value.stringValue
    }
  }

  public struct Opacity: Property, SimpleProperty, StyleComponent {
    public let label = "opacity"
    public let value: String

    public init(_ value: Double) {
      self.value = String(value)
    }

    public init(_ value: PropertyValues.Reset) {
      self.value = value.stringValue
    }
  }
}
