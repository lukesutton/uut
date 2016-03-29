extension Properties {
  public struct Color: Property, StyleComponent {
    public let label = "color"
    public let value: PropertyValues.Color
    public let stringValue: String

    public init(_ value: PropertyValues.Color) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct Opacity: Property, StyleComponent {
    public let label = "opacity"
    public let value: PropertyValues.Opacity
    public let stringValue: String

    public init(_ value: PropertyValues.Opacity) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }
}
