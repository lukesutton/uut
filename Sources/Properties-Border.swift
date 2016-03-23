extension Properties {
  // All borders

  public struct Border: Property, SimpleProperty, StyleComponent {
    public let label = "border"
    public let value: String

    public init(_ width: PropertyValues.BorderWidth, _ style: PropertyValues.BorderStyle, _ color: PropertyValues.Color) {
      self.value = "\(width.stringValue) \(style.rawValue) \(color.stringValue)"
    }

    public init(_ value: PropertyValues.Reset) {
      self.value = value.rawValue
    }
  }

  public struct BorderColor: Property, SimpleProperty, StyleComponent {
    public let label = "border-color"
    public let value: String

    public init(_ color: PropertyValues.Color) {
      self.value = color.stringValue
    }
  }

  public struct BorderStyle: Property, SimpleProperty, StyleComponent {
    public let label = "border-style"
    public let value: String

    public init(_ color: PropertyValues.BorderStyle) {
      self.value = color.stringValue
    }
  }

  public struct BorderWidth: Property, SimpleProperty, StyleComponent {
    public let label = "border-width"
    public let value: String

    public init(_ color: PropertyValues.BorderWidth) {
      self.value = color.stringValue
    }
  }

  // Border Bottom

  public struct BorderBottom: Property, SimpleProperty, StyleComponent {
    public let label = "border-bottom"
    public let value: String

    public init(_ width: PropertyValues.BorderWidth, _ style: PropertyValues.BorderStyle, _ color: PropertyValues.Color) {
      self.value = "\(width.stringValue) \(style.rawValue) \(color.stringValue)"
    }

    public init(_ value: PropertyValues.Reset) {
      self.value = value.rawValue
    }
  }

  public struct BorderBottomColor: Property, SimpleProperty, StyleComponent {
    public let label = "border-bottom-color"
    public let value: String

    public init(_ color: PropertyValues.Color) {
      self.value = color.stringValue
    }
  }

  public struct BorderBottomStyle: Property, SimpleProperty, StyleComponent {
    public let label = "border-bottom-style"
    public let value: String

    public init(_ color: PropertyValues.BorderStyle) {
      self.value = color.stringValue
    }
  }

  public struct BorderBottomWidth: Property, SimpleProperty, StyleComponent {
    public let label = "border-bottom-width"
    public let value: String

    public init(_ color: PropertyValues.BorderWidth) {
      self.value = color.stringValue
    }
  }

  // Border Left

  public struct BorderLeft: Property, SimpleProperty, StyleComponent {
    public let label = "border-top"
    public let value: String

    public init(_ width: PropertyValues.BorderWidth, _ style: PropertyValues.BorderStyle, _ color: PropertyValues.Color) {
      self.value = "\(width.stringValue) \(style.rawValue) \(color.stringValue)"
    }

    public init(_ value: PropertyValues.Reset) {
      self.value = value.rawValue
    }
  }

  public struct BorderLeftColor: Property, SimpleProperty, StyleComponent {
    public let label = "border-top-color"
    public let value: String

    public init(_ color: PropertyValues.Color) {
      self.value = color.stringValue
    }
  }

  public struct BorderLeftStyle: Property, SimpleProperty, StyleComponent {
    public let label = "border-top-style"
    public let value: String

    public init(_ color: PropertyValues.BorderStyle) {
      self.value = color.stringValue
    }
  }

  public struct BorderLeftWidth: Property, SimpleProperty, StyleComponent {
    public let label = "border-top-width"
    public let value: String

    public init(_ color: PropertyValues.BorderWidth) {
      self.value = color.stringValue
    }
  }

  // Border Right

  public struct BorderRight: Property, SimpleProperty, StyleComponent {
    public let label = "border-right"
    public let value: String

    public init(_ width: PropertyValues.BorderWidth, _ style: PropertyValues.BorderStyle, _ color: PropertyValues.Color) {
      self.value = "\(width.stringValue) \(style.rawValue) \(color.stringValue)"
    }

    public init(_ value: PropertyValues.Reset) {
      self.value = value.rawValue
    }
  }

  public struct BorderRightColor: Property, SimpleProperty, StyleComponent {
    public let label = "border-right-color"
    public let value: String

    public init(_ color: PropertyValues.Color) {
      self.value = color.stringValue
    }
  }

  public struct BorderRightStyle: Property, SimpleProperty, StyleComponent {
    public let label = "border-right-style"
    public let value: String

    public init(_ color: PropertyValues.BorderStyle) {
      self.value = color.stringValue
    }
  }

  public struct BorderRightWidth: Property, SimpleProperty, StyleComponent {
    public let label = "border-right-width"
    public let value: String

    public init(_ color: PropertyValues.BorderWidth) {
      self.value = color.stringValue
    }
  }

  // Border Radius
  public struct BorderRadius: Property, SimpleProperty, StyleComponent {
    public let label = "border-radius"
    public let value: String

    public init(_ unit: PropertyValues.Unit) {
      self.value = unit.stringValue
    }
  }

  public struct BorderTopLeftRadius: Property, SimpleProperty, StyleComponent {
    public let label = "border-top-left-radius"
    public let value: String

    public init(_ unit: PropertyValues.Unit) {
      self.value = unit.stringValue
    }
  }

  public struct BorderTopRightRadius: Property, SimpleProperty, StyleComponent {
    public let label = "border-top-right-radius"
    public let value: String

    public init(_ unit: PropertyValues.Unit) {
      self.value = unit.stringValue
    }
  }

  public struct BorderBottomLeftRadius: Property, SimpleProperty, StyleComponent {
    public let label = "border-bottom-left-radius"
    public let value: String

    public init(_ unit: PropertyValues.Unit) {
      self.value = unit.stringValue
    }
  }

  public struct BorderBottomRightRadius: Property, SimpleProperty, StyleComponent {
    public let label = "border-bottom-right-radius"
    public let value: String

    public init(_ unit: PropertyValues.Unit) {
      self.value = unit.stringValue
    }
  }

  public struct BorderLeftRadius: Property, SimpleProperty, StyleComponent {
    public let label = "border-left-radius"
    public let value: String

    public init(_ unit: PropertyValues.Unit) {
      self.value = unit.stringValue
    }
  }

  public struct BorderRightRadius: Property, SimpleProperty, StyleComponent {
    public let label = "border-right-radius"
    public let value: String

    public init(_ unit: PropertyValues.Unit) {
      self.value = unit.stringValue
    }
  }
}
