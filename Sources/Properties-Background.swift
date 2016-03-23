extension Properties {
  public struct BackgroundAttachment: Property, SimpleProperty, StyleComponent {
    public enum Attachment: String {
      case Scroll = "scroll"
      case Fixed = "fixed"
      case Local = "local"
    }

    public let label = "background-attachment"
    public let value: String

    public init(_ value: Attachment) {
      self.value = value.rawValue
    }

    public init(_ value: Values.Reset) {
      self.value = value.rawValue
    }
  }

  public struct BackgroundBlendMode: Property, SimpleProperty, StyleComponent {
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
    }

    public let label = "background-blend-mode"
    public let value: String

    public init(_ value: Mode) {
      self.value = value.rawValue
    }
  }

  public struct BackgroundColor: Property, SimpleProperty, StyleComponent {
    public let label = "background-color"
    public let value: String

    public init(_ value: Values.Color) {
      self.value = value.stringValue
    }

    public init(_ value: Values.Reset) {
      self.value = value.rawValue
    }
  }

  public struct BackgroundImage: Property, SimpleProperty, StyleComponent {
    public enum Background {
      case URL(String)
      case None

      var stringValue: String {
        switch self {
          case let URL(value): return "url(\"\(value)\")"
          case None: return "none"
        }
      }
    }

    public let label = "background-image"
    public let value: String

    public init(_ value: Background) {
      self.value = value.stringValue
    }

    public init(_ value: Values.Reset) {
      self.value = value.rawValue
    }
  }

  public struct BackgroundPosition: Property, SimpleProperty, StyleComponent {
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
        }
      }
    }

    public let label = "background-position"
    public let value: String

    public init(_ value: Position) {
      self.value = value.stringValue
    }

    public init(_ value: Values.Reset) {
      self.value = value.rawValue
    }
  }

  public struct BackgroundRepeat: Property, SimpleProperty, StyleComponent {
    public enum Repeat: String {
      case Repeat = "repeat"
      case RepeatX = "repeat-x"
      case RepeatY = "repeat-y"
      case NoRepeat = "no-repeat"
    }

    public let label = "background-repeat"
    public let value: String

    public init(_ value: Repeat) {
      self.value = value.rawValue
    }

    public init(_ value: Values.Reset) {
      self.value = value.rawValue
    }
  }

  public struct BackgroundClip: Property, SimpleProperty, StyleComponent {
    public let label = "background-clip"
    public let value: String

    public init(_ value: Values.Box) {
      self.value = value.rawValue
    }

    public init(_ value: Values.Reset) {
      self.value = value.rawValue
    }
  }

  public struct BackgroundOrigin: Property, SimpleProperty, StyleComponent {
    public let label = "background-origin"
    public let value: String

    public init(_ value: Values.Box) {
      self.value = value.rawValue
    }

    public init(_ value: Values.Reset) {
      self.value = value.rawValue
    }
  }

  public struct BackgroundSize: Property, SimpleProperty, StyleComponent {
    public enum Size {
      case Auto
      case Length(String, String)
      case Percentage(Double, Double)
      case Cover
      case Contain

      var stringValue: String {
        switch self {
          case let Length(x, y): return "\(x) \(y))"
          case let Percentage(x, y): return "\(x)% \(y)%)"
          default: return String(self).lowercaseString
        }
      }
    }

    public let label = "background-size"
    public let value: String

    public init(_ value: Size) {
      self.value = value.stringValue
    }

    public init(_ value: Values.Reset) {
      self.value = value.rawValue
    }
  }
}
