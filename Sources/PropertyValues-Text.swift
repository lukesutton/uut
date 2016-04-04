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

  public enum TextAlign: String, PropertyValue {
    case Left = "left"
    case Right = "right"
    case Center = "center"
    case Justify = "justify"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum TextTransform: String, PropertyValue {
    case None = "none"
    case Capitalize = "capitalize"
    case Uppercase = "uppercase"
    case Lowercase = "lowercase"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum WhiteSpace: String, PropertyValue {
    case Normal = "normal"
    case Nowrap = "nowrap"
    case Pre = "pre"
    case PreLine = "pre-line"
    case PreWrap = "pre-wrap"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum WordBreak: String, PropertyValue {
    case Normal = "normal"
    case BreakAll = "break-all"
    case KeepAll = "keep-all"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }
}
