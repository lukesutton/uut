extension PropertyValues {
  public enum Font: PropertyValue {
    case Config(FontStyle?, FontVariant?, FontWeight?, FontSize, FontFamily)
    case Caption

    public var stringValue: String {
      switch self {
        case let Config(style, variant, weight, size, family):
          return "what"
        default:
          return String(self).lowercaseString
      }
    }
  }

  public enum FontFamily: PropertyValue {
    case Family(Values.FontFamily)
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let .Family(family): return family.stringValue
        default: return String(self).lowercaseString
      }
    }
  }

  public enum FontSize: PropertyValue {
    case Value(Measurement)
    case Medium
    case XXSmall
    case XSmall
    case Small
    case Large
    case XLarge
    case XXLarge
    case Smaller
    case Larger
    case Intial
    case Inherit

    public var stringValue: String {
      switch self {
        case let Value(m): return m.stringValue
        case XXSmall: return "xx-small"
        case XSmall: return "x-small"
        case XLarge: return "x-large"
        case XXLarge: return "xx-large"
        default: return String(self).lowercaseString
      }
    }
  }

  public enum FontStyle: String, PropertyValue {
    case Normal = "normal"
    case Italic = "italic"
    case Oblique = "oblique"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum FontVariant: String, PropertyValue {
    case Normal = "normal"
    case SmallCaps = "small-caps"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum FontWeight: String, PropertyValue {
    case Normal = "normal"
    case Bold = "bold"
    case Bolder = "bolder"
    case Lighter = "lighter"
    case OneHundred = "100"
    case TwoHundred = "200"
    case ThreeHundred = "300"
    case FourHundred = "400"
    case FiveHundred = "500"
    case SixHundred = "600"
    case SevenHundred = "700"
    case EightHundred = "800"
    case NineHundred = "900"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }
}
