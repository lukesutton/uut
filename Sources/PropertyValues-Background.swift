extension PropertyValues {
  public enum BackgroundAttachment: String, PropertyValue {
    case Scroll = "scroll"
    case Fixed = "fixed"
    case Local = "local"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum BackgroundBlendMode: String, PropertyValue {
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

    public var stringValue: String {
      return rawValue
    }
  }

  public enum BackgroundPosition: PropertyValue {
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

    public var stringValue: String {
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

  public enum BackgroundRepeat: String, PropertyValue {
    case Repeat = "repeat"
    case RepeatX = "repeat-x"
    case RepeatY = "repeat-y"
    case NoRepeat = "no-repeat"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum BackgroundSize: PropertyValue {
    case Auto
    case Length(String, String)
    case Percentage(Double, Double)
    case Cover
    case Contain
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let Length(x, y): return "\(x) \(y))"
        case let Percentage(x, y): return "\(x)% \(y)%)"
        default: return String(self).lowercaseString
      }
    }
  }
}
