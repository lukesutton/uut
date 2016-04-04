extension PropertyValues {
  public enum HangingPunctuation: String, PropertyValue {
    case None = "none"
    case First = "first"
    case Last = "last"
    case AllowEnd = "allow-end"
    case ForceEnd = "force-end"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return self.rawValue
    }
  }

  public enum LetterSpacing: PropertyValue {
    case Normal
    case Length(Values.Unit)
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let Length(n): return n.stringValue
        default: return String(self).lowercaseString
      }
    }
  }

  public enum LineHeight: PropertyValue {
    case Normal
    case Number(Double)
    case Length(Values.Unit)
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let Number(n): return String(n)
        case let Length(n): return n.stringValue
        default: return String(self).lowercaseString
      }
    }
  }
}
