public struct PropertyValues {
  private init() {}

  public enum Color {
    case Color(Values.Color)
    case Initial
    case Inherit

    var stringValue: String {
      switch self {
        case let Color(x): return x.stringValue
        default: return String(self).lowercaseString
      }
    }
  }

  public enum Unit {
    case Unit(Values.Unit)
    case Initial
    case Inherit

    var stringValue: String {
      switch self {
        case let Unit(x): return x.stringValue
        default: return String(self).lowercaseString
      }
    }
  }

  public enum Reset: String {
    case Initial = "initial"
    case Inherit = "inherit"

    var stringValue: String {
      return rawValue
    }
  }

  public enum Box: String {
    case BorderBox = "border-box"
    case PaddingBox = "padding-box"
    case ContentBox = "content-box"
    case Initial = "initial"
    case Inherit = "inherit"

    var stringValue: String {
      return rawValue
    }
  }

  public enum BorderWidth {
    case Medium
    case Thin
    case Thick
    case Width(Unit)
    case Initial
    case Inherit

    var stringValue: String {
      switch self {
        case let Width(value): return value.stringValue
        default: return String(self).lowercaseString
      }
    }
  }

  public enum BorderStyle: String {
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

    var stringValue: String {
      return rawValue
    }
  }
}
