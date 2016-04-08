extension PropertyValues {
  public enum CounterReset: PropertyValue {
    case None
    case Name(String)
    case Number(Int)
    case Intial
    case Inherit

    public var stringValue: String {
      switch self {
        case let Name(s): return s
        case let Number(n): return String(n)
        default: return String(self).lowercaseString
      }
    }
  }

  public enum ListStyle: PropertyValue {
    case Config(ListStyleType, ListStylePosition, PropertyValues.URL)
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let Config(style, pos, URL):
          return "\(style.stringValue) \(pos.stringValue) \(URL.stringValue)"
        default:
          return String(self).lowercaseString
      }
    }
  }

  public enum ListStylePosition: String, PropertyValue {
    case Inside = "inside"
    case Outside = "outside"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum ListStyleType: String, PropertyValue {
    case Disc = "disc"
    case Armenian = "armenian"
    case Circle = "circle"
    case CJKIdeographic = "cjk-ideographic"
    case Decimal = "decimal"
    case DecimalLeadingZero = "decimal-leading-zero"
    case Georgian = "georgian"
    case Hebrew = "hebrew"
    case Hiragana = "hiragana"
    case HiraganaIroha = "hiragana-iroha"
    case Katakana = "katakana"
    case KatakanaIroha = "katakana-iroha"
    case LowerAlpha = "lower-alpha"
    case LowerGreek = "lower-greek"
    case LowerLatin = "lower-latin"
    case LowerRoman = "lower-roman"
    case None = "none"
    case Square = "square"
    case UpperAlpha = "upper-alpha"
    case UpperLatin = "upper-latin"
    case UpperRoman = "upper-roman"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }
}
