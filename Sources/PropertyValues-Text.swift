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
    case Value(Measurement)
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let Value(n): return n.stringValue
        default: return String(self).lowercaseString
      }
    }
  }

  public enum LineHeight: PropertyValue {
    case Normal
    case Number(Double)
    case Value(Measurement)
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let Number(n): return String(n)
        case let Value(n): return n.stringValue
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

  public enum WordWrap: String, PropertyValue {
    case Normal = "normal"
    case BreakWord = "break-word"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum TextDecoration: String, PropertyValue {
    case None = "none"
    case Underline = "underline"
    case Overline = "overline"
    case LineThrough = "line-through"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }
}
