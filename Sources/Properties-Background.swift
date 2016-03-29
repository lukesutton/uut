extension Properties {
  public struct BackgroundAttachment: Property, StyleComponent {
    public enum Attachment: String {
      case Scroll = "scroll"
      case Fixed = "fixed"
      case Local = "local"
      case Initial = "initial"
      case Inherit = "inherit"
    }

    public let label = "background-attachment"
    public let value: Attachment
    public let stringValue: String

    public init(_ value: Attachment) {
      self.value = value
      self.stringValue = value.rawValue
    }
  }

  public struct BackgroundBlendMode: Property, StyleComponent {
    public enum Mode: String {
      case Normal = "normal"
      case Multiply = "multiply"
      case Screen = "screen"
      case Overlay = "overlay"
      case Darken = "darken"
      case Lighten = "lighten"
      case ColorDodge = "color-dodge"
      case Saturation = "saturation"
      case Color = "color"
      case Luminosity = "luminosity"
      case Initial = "initial"
      case Inherit = "inherit"
    }

    public let label = "background-blend-mode"
    public let value: Mode
    public let stringValue: String

    public init(_ value: Mode) {
      self.value = value
      self.stringValue = value.rawValue
    }
  }

  public struct BackgroundColor: Property, StyleComponent {
    public let label = "background-color"
    public let value: PropertyValues.Color
    public let stringValue: String

    public init(_ value: PropertyValues.Color) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BackgroundImage: Property, StyleComponent {
    public enum Background {
      case URL(String)
      case None
      case Initial
      case Inherit

      var stringValue: String {
        switch self {
          case let URL(value): return "url(\"\(value)\")"
          default: return String(self).lowercaseString
        }
      }
    }

    public let label = "background-image"
    public let value: Background
    public let stringValue: String

    public init(_ value: Background) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BackgroundPosition: Property, StyleComponent {
    public enum Position {
      case LeftTop
      case LeftCenter
      case LeftBottom
      case RightTop
      case RightCenter
      case RightBottom
      case CenterTop
      case CenterCenter
      case CenterBottom
      case Percentage(Double, Double)
      case Exact(String, String)
      case Initial
      case Inherit

      var stringValue: String {
        switch self {
          case LeftTop: return "left top"
          case LeftCenter: return "left center"
          case LeftBottom: return "left bottom"
          case RightTop: return "right top"
          case RightCenter: return "right center"
          case RightBottom: return "right bottom"
          case CenterTop: return "center top"
          case CenterCenter: return "center center"
          case CenterBottom: return "center bottom"
          case let Percentage(x, y): return "\(x)% \(y)%"
          case let Exact(x, y): return "\(x) \(y)"
          case Initial: return "initial"
          case Inherit: return "inherit"
        }
      }
    }

    public let label = "background-position"
    public let value: Position
    public let stringValue: String

    public init(_ value: Position) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BackgroundRepeat: Property, StyleComponent {
    public enum Repeat: String {
      case Repeat = "repeat"
      case RepeatX = "repeat-x"
      case RepeatY = "repeat-y"
      case NoRepeat = "no-repeat"
      case Initial = "initial"
      case Inherit = "inherit"
    }

    public let label = "background-repeat"
    public let value: Repeat
    public let stringValue: String

    public init(_ value: Repeat) {
      self.value = value
      self.stringValue = value.rawValue
    }
  }

  public struct BackgroundClip: Property, StyleComponent {
    public let label = "background-clip"
    public let value: PropertyValues.Box
    public let stringValue: String

    public init(_ value: PropertyValues.Box) {
      self.value = value
      self.stringValue = value.rawValue
    }
  }

  public struct BackgroundOrigin: Property, StyleComponent {
    public let label = "background-origin"
    public let value: PropertyValues.Box
    public let stringValue: String

    public init(_ value: PropertyValues.Box) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct BackgroundSize: Property, StyleComponent {
    public enum Size {
      case Auto
      case Length(String, String)
      case Percentage(Double, Double)
      case Cover
      case Contain
      case Initial
      case Inherit

      var stringValue: String {
        switch self {
          case let Length(x, y): return "\(x) \(y))"
          case let Percentage(x, y): return "\(x)% \(y)%)"
          default: return String(self).lowercaseString
        }
      }
    }

    public let label = "background-size"
    public let value: Size
    public let stringValue: String

    public init(_ value: Size) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }
}
