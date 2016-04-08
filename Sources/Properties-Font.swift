extension Properties {
  public struct Font: Property, StyleComponent {
    public let label = "font"
    public let value: PropertyValues.Font

    public init(_ value: PropertyValues.Font) {
      self.value = value
    }

    public init(style: PropertyValues.FontStyle? = nil, variant: PropertyValues.FontVariant? = nil, weight: PropertyValues.FontWeight? = nil, size: PropertyValues.FontSize, family: PropertyValues.FontFamily) {
      self.init(.Config(style, variant, weight, size, family))
    }

    public init(style: PropertyValues.FontStyle? = nil, variant: PropertyValues.FontVariant? = nil, weight: PropertyValues.FontWeight? = nil, size: Measurement, family: PropertyValues.FontFamily) {
      self.init(.Config(style, variant, weight, .Value(size), family))
    }

    public var stringValue: String {
      return value.stringValue
    }
  }

  public struct FontFamily: Property, StyleComponent {
    public let label = "font-family"
    public let value: PropertyValues.FontFamily

    public init(_ value: PropertyValues.FontFamily) {
      self.value = value
    }

    public init(_ value: Values.FontFamily) {
      self.init(.Family(value))
    }

    public var stringValue: String {
      return value.stringValue
    }
  }

  public struct FontSize: Property, StyleComponent {
    public let label = "font-size"
    public let value: PropertyValues.FontSize

    public init(_ value: PropertyValues.FontSize) {
      self.value = value
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }

    public var stringValue: String {
      return value.stringValue
    }
  }

  public struct FontStyle: Property, StyleComponent {
    public let label = "font-style"
    public let value: PropertyValues.FontStyle

    public init(_ value: PropertyValues.FontStyle) {
      self.value = value
    }

    public var stringValue: String {
      return value.stringValue
    }
  }

  public struct FontVariant: Property, StyleComponent {
    public let label = "font-variant"
    public let value: PropertyValues.FontVariant

    public init(_ value: PropertyValues.FontVariant) {
      self.value = value
    }

    public var stringValue: String {
      return value.stringValue
    }
  }

  public struct FontWeight: Property, StyleComponent {
    public let label = "font-weight"
    public let value: PropertyValues.FontWeight

    public init(_ value: PropertyValues.FontWeight) {
      self.value = value
    }

    public var stringValue: String {
      return value.stringValue
    }
  }
}
