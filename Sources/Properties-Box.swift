extension Properties {
  // Position

  public struct Bottom: Property, StyleComponent {
    public let label = "bottom"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct Top: Property, StyleComponent {
    public let label = "top"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct Left: Property, StyleComponent {
    public let label = "left"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct Right: Property, StyleComponent {
    public let label = "right"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct Position: Property, StyleComponent {
    public enum PositionValue {
      case Static
      case Absolute
      case Fixed
      case Relative
      case Initial
      case Inherit

      var stringValue: String {
        return String(self).lowercaseString
      }
    }

    public let label = "position"
    public let value: PositionValue
    public let stringValue: String

    public init(_ value: PositionValue) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  // Other

  public struct Clear: Property, StyleComponent {
    public enum ClearValue {
      case None
      case Left
      case Right
      case Both
      case Initial
      case Inherit

      var stringValue: String {
        return String(self).lowercaseString
      }
    }

    public let label = "clear"
    public let value: ClearValue
    public let stringValue: String

    public init(_ value: ClearValue) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct Clip: Property, StyleComponent {
    public enum ClipValue {
      case None
      case Left
      case Right
      case Both
      case Initial
      case Inherit

      var stringValue: String {
        return String(self).lowercaseString
      }
    }

    public let label = "clear"
    public let value: ClipValue
    public let stringValue: String

    public init(_ value: ClipValue) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct Display: Property, StyleComponent {
    public let label = "display"
    public let value: PropertyValues.Display
    public let stringValue: String

    public init(_ value: PropertyValues.Display) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct Float: Property, StyleComponent {
    public let label = "float"
    public let value: PropertyValues.Float
    public let stringValue: String

    public init(_ value: PropertyValues.Float) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct Height: Property, StyleComponent {
    public let label = "Height"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct Margin: Property, StyleComponent {
    public let label = "margin"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct MarginBottom: Property, StyleComponent {
    public let label = "margin-bottom"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct MarginLeft: Property, StyleComponent {
    public let label = "margin-left"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct MarginRight: Property, StyleComponent {
    public let label = "margin-right"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct MarginTop: Property, StyleComponent {
    public let label = "margin-top"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct MaxHeight: Property, StyleComponent {
    public let label = "max-height"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct MaxWidth: Property, StyleComponent {
    public let label = "max-width"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct MinHeight: Property, StyleComponent {
    public let label = "min-height"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct MinWidth: Property, StyleComponent {
    public let label = "min-width"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct Overflow: Property, StyleComponent {
    public let label = "overflow"
    public let value: PropertyValues.Overflow
    public let stringValue: String

    public init(_ value: PropertyValues.Overflow) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct OverflowX: Property, StyleComponent {
    public let label = "overflow-x"
    public let value: PropertyValues.Overflow
    public let stringValue: String

    public init(_ value: PropertyValues.Overflow) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct OverflowY: Property, StyleComponent {
    public let label = "overflow-y"
    public let value: PropertyValues.Overflow
    public let stringValue: String

    public init(_ value: PropertyValues.Overflow) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct Padding: Property, StyleComponent {
    public let label = "padding"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct PaddingBottom: Property, StyleComponent {
    public let label = "padding-bottom"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct PaddingLeft: Property, StyleComponent {
    public let label = "padding-left"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct PaddingRight: Property, StyleComponent {
    public let label = "padding-right"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct PaddingTop: Property, StyleComponent {
    public let label = "padding-top"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct Width: Property, StyleComponent {
    public let label = "width"
    public let value: PropertyValues.MeasurementWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.MeasurementWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }

    public init(_ value: Measurement) {
      self.init(.Value(value))
    }
  }

  public struct Visibility: Property, StyleComponent {
    public let label = "padding-top"
    public let value: PropertyValues.Visibility
    public let stringValue: String

    public init(_ value: PropertyValues.Visibility) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct VerticalAlign: Property, StyleComponent {
    public let label = "vertical-align"
    public let value: PropertyValues.VerticalAlign
    public let stringValue: String

    public init(_ value: PropertyValues.VerticalAlign) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct ZIndex: Property, StyleComponent {
    public let label = "z-index"
    public let value: PropertyValues.NumberWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.NumberWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }
}
