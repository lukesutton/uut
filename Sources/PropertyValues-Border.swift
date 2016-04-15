extension PropertyValues {
  public struct Border: PropertyValue {
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

    public init(_ width: Measurement, _ style: PropertyValues.BorderStyle, _ color: PropertyValues.Color) {
      self.init(.Value(width), style, color)
    }

    public init(_ value: PropertyValues.Reset) {
      self.width = nil
      self.style = nil
      self.color = nil
      self.reset = value
      self.stringValue = value.stringValue
    }
  }

  public enum BorderStyle: String, PropertyValue {
    case None = "none"
    case Hidden = "hidden"
    case Dotted = "dotted"
    case Dashed = "dashed"
    case Solid = "solid"
    case Double = "double"
    case Groove = "groove"
    case Ridge = "ridge"
    case Inset = "inset"
    case Outset = "outset"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum BorderWidth: PropertyValue {
    case Medium
    case Thin
    case Thick
    case Value(Measurement)
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let Value(value): return value.stringValue
        default: return String(self).lowercaseString
      }
    }
  }
}
