extension Properties {
  // All borders

  public struct Border: Property, StyleComponent {
    public let label = "border"
    public let width: PropertyValues.BorderWidth?
    public let style: PropertyValues.BorderStyle?
    public let color: PropertyValues.Color?
    public let reset: PropertyValues.Reset?
    public let stringValue: String

    public init(_ width: PropertyValues.BorderWidth, _ style: PropertyValues.BorderStyle, _ color: PropertyValues.Color) {
      self.width = width
      self.style = style
      self.color = color
      self.reset = nil
      self.stringValue = "\(width.stringValue) \(style.rawValue) \(color.stringValue)"
    }

    public init(_ value: PropertyValues.Reset) {
      self.width = nil
      self.style = nil
      self.color = nil
      self.reset = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderColor: Property, StyleComponent {
    public let label = "border-color"
    public let value: PropertyValues.Color
    public let stringValue: String

    public init(_ value: PropertyValues.Color) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderStyle: Property, StyleComponent {
    public let label = "border-style"
    public let value: PropertyValues.BorderStyle
    public let stringValue: String

    public init(_ value: PropertyValues.BorderStyle) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderWidth: Property, StyleComponent {
    public let label = "border-width"
    public let value: PropertyValues.BorderWidth
    public let stringValue: String

    public init(_ value: PropertyValues.BorderWidth) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  // Border Bottom

  public struct BorderBottom: Property, StyleComponent {
    public let label = "border-bottom"
    public let width: PropertyValues.BorderWidth?
    public let style: PropertyValues.BorderStyle?
    public let color: PropertyValues.Color?
    public let reset: PropertyValues.Reset?
    public let stringValue: String

    public init(_ width: PropertyValues.BorderWidth, _ style: PropertyValues.BorderStyle, _ color: PropertyValues.Color) {
      self.width = width
      self.style = style
      self.color = color
      self.reset = nil
      self.stringValue = "\(width.stringValue) \(style.rawValue) \(color.stringValue)"
    }

    public init(_ value: PropertyValues.Reset) {
      self.width = nil
      self.style = nil
      self.color = nil
      self.reset = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderBottomColor: Property, StyleComponent {
    public let label = "border-bottom-color"
    public let value: PropertyValues.Color
    public let stringValue: String

    public init(_ value: PropertyValues.Color) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderBottomStyle: Property, StyleComponent {
    public let label = "border-bottom-style"
    public let value: PropertyValues.BorderStyle
    public let stringValue: String

    public init(_ value: PropertyValues.BorderStyle) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderBottomWidth: Property, StyleComponent {
    public let label = "border-bottom-width"
    public let value: PropertyValues.BorderWidth
    public let stringValue: String

    public init(_ value: PropertyValues.BorderWidth) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  // Border Left

  public struct BorderLeft: Property, StyleComponent {
    public let label = "border-left"
    public let width: PropertyValues.BorderWidth?
    public let style: PropertyValues.BorderStyle?
    public let color: PropertyValues.Color?
    public let reset: PropertyValues.Reset?
    public let stringValue: String

    public init(_ width: PropertyValues.BorderWidth, _ style: PropertyValues.BorderStyle, _ color: PropertyValues.Color) {
      self.width = width
      self.style = style
      self.color = color
      self.reset = nil
      self.stringValue = "\(width.stringValue) \(style.rawValue) \(color.stringValue)"
    }

    public init(_ value: PropertyValues.Reset) {
      self.width = nil
      self.style = nil
      self.color = nil
      self.reset = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderLeftColor: Property, StyleComponent {
    public let label = "border-left-color"
    public let value: PropertyValues.Color
    public let stringValue: String

    public init(_ value: PropertyValues.Color) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderLeftStyle: Property, StyleComponent {
    public let label = "border-left-style"
    public let value: PropertyValues.BorderStyle
    public let stringValue: String

    public init(_ value: PropertyValues.BorderStyle) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderLeftWidth: Property, StyleComponent {
    public let label = "border-left-width"
    public let value: PropertyValues.BorderWidth
    public let stringValue: String

    public init(_ value: PropertyValues.BorderWidth) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  // Border Right

  public struct BorderRight: Property, StyleComponent {
    public let label = "border-left-right"
    public let width: PropertyValues.BorderWidth?
    public let style: PropertyValues.BorderStyle?
    public let color: PropertyValues.Color?
    public let reset: PropertyValues.Reset?
    public let stringValue: String

    public init(_ width: PropertyValues.BorderWidth, _ style: PropertyValues.BorderStyle, _ color: PropertyValues.Color) {
      self.width = width
      self.style = style
      self.color = color
      self.reset = nil
      self.stringValue = "\(width.stringValue) \(style.rawValue) \(color.stringValue)"
    }

    public init(_ value: PropertyValues.Reset) {
      self.width = nil
      self.style = nil
      self.color = nil
      self.reset = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderRightColor: Property, StyleComponent {
    public let label = "border-right-color"
    public let value: PropertyValues.Color
    public let stringValue: String

    public init(_ value: PropertyValues.Color) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderRightStyle: Property, StyleComponent {
    public let label = "border-right-style"
    public let value: PropertyValues.BorderStyle
    public let stringValue: String

    public init(_ value: PropertyValues.BorderStyle) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderRightWidth: Property, StyleComponent {
    public let label = "border-right-width"
    public let value: PropertyValues.BorderWidth
    public let stringValue: String

    public init(_ value: PropertyValues.BorderWidth) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  // Border Top

  public struct BorderTop: Property, StyleComponent {
    public let label = "border-left-right"
    public let width: PropertyValues.BorderWidth?
    public let style: PropertyValues.BorderStyle?
    public let color: PropertyValues.Color?
    public let reset: PropertyValues.Reset?
    public let stringValue: String

    public init(_ width: PropertyValues.BorderWidth, _ style: PropertyValues.BorderStyle, _ color: PropertyValues.Color) {
      self.width = width
      self.style = style
      self.color = color
      self.reset = nil
      self.stringValue = "\(width.stringValue) \(style.rawValue) \(color.stringValue)"
    }

    public init(_ value: PropertyValues.Reset) {
      self.width = nil
      self.style = nil
      self.color = nil
      self.reset = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderTopColor: Property, StyleComponent {
    public let label = "border-top-color"
    public let value: PropertyValues.Color
    public let stringValue: String

    public init(_ value: PropertyValues.Color) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderTopStyle: Property, StyleComponent {
    public let label = "border-top-style"
    public let value: PropertyValues.BorderStyle
    public let stringValue: String

    public init(_ value: PropertyValues.BorderStyle) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderTopWidth: Property, StyleComponent {
    public let label = "border-top-width"
    public let value: PropertyValues.BorderWidth
    public let stringValue: String

    public init(_ value: PropertyValues.BorderWidth) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  // Border Radius

  public struct BorderRadius: Property, StyleComponent {
    public let label = "border-radius"
    public let value: PropertyValues.Unit
    public let stringValue: String

    public init(_ value: PropertyValues.Unit) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderTopLeftRadius: Property, StyleComponent {
    public let label = "border-top-left-radius"
    public let value: PropertyValues.Unit
    public let stringValue: String

    public init(_ value: PropertyValues.Unit) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderTopRightRadius: Property, StyleComponent {
    public let label = "border-top-right-radius"
    public let value: PropertyValues.Unit
    public let stringValue: String

    public init(_ value: PropertyValues.Unit) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderBottomLeftRadius: Property, StyleComponent {
    public let label = "border-bottom-left-radius"
    public let value: PropertyValues.Unit
    public let stringValue: String

    public init(_ value: PropertyValues.Unit) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderBottomRightRadius: Property, StyleComponent {
    public let label = "border-bottom-right-radius"
    public let value: PropertyValues.Unit
    public let stringValue: String

    public init(_ value: PropertyValues.Unit) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderLeftRadius: Property, StyleComponent {
    public let label = "border-left-radius"
    public let value: PropertyValues.Unit
    public let stringValue: String

    public init(_ value: PropertyValues.Unit) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BorderRightRadius: Property, StyleComponent {
    public let label = "border-right-radius"
    public let value: PropertyValues.Unit
    public let stringValue: String

    public init(_ value: PropertyValues.Unit) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }
}
