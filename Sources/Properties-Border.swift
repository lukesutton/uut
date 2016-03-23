extension Properties {
  public struct Border: Property, SimpleProperty, StyleComponent {
    public let label = "border"
    public let value: String

    public init(_ width: Values.BorderWidth, _ style: Values.BorderStyle, _ color: Values.Color) {
      self.value = "\(width.stringValue) \(style.rawValue) \(color.stringValue)"
    }

    public init(_ value: Values.Reset) {
      self.value = value.rawValue
    }
  }

  public struct BorderBottom: Property, SimpleProperty, StyleComponent {
    public let label = "border-bottom"
    public let value: String

    public init(_ width: Values.BorderWidth, _ style: Values.BorderStyle, _ color: Values.Color) {
      self.value = "\(width.stringValue) \(style.rawValue) \(color.stringValue)"
    }

    public init(_ value: Values.Reset) {
      self.value = value.rawValue
    }
  }

  public struct BorderBottomColor: Property, SimpleProperty, StyleComponent {
    public let label = "border-bottom-color"
    public let value: String

    public init(_ color: Values.Color) {
      self.value = color.stringValue
    }

    public init(_ value: Values.Reset) {
      self.value = value.rawValue
    }
  }
}
