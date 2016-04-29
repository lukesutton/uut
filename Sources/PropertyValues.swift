public struct PropertyValues {
  private init() {}

  public enum Color: PropertyValue {
    case Value(Values.Color)
    case Initial
    case Inherit
    case Black
    case White
    case Red
    case Blue
    case Green

    public var stringValue: String {
      switch self {
        case let Value(x): return x.stringValue
        default: return String(self).lowercaseString
      }
    }
  }

  public enum URL: PropertyValue {
    case None
    case URL(String)
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let .URL(s): return s
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

  public enum Box: String, PropertyValue {
    case BorderBox = "border-box"
    case PaddingBox = "padding-box"
    case ContentBox = "content-box"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum Opacity: PropertyValue {
    case Value(Double)
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let .Value(value): return String(value)
        default: return String(self).lowercaseString
      }
    }
  }

  public enum Shadow: PropertyValue {
    case None
    case Initial
    case Inherit
    case Inset
    case Shadow(Measurement, Measurement, Double?, Double?, Values.Color?)

    public var stringValue: String {
      switch self {
        case let .Shadow(h, v, blur, spread, color):
          let output = [
            h.stringValue,
            v.stringValue,
            blur != nil ? String(blur) : "",
            spread != nil ? String(spread) : "",
            color != nil ? color!.stringValue : ""
          ].filter {!$0.isEmpty}

          return output.joinWithSeparator(" ")
        default:
          return String(self).lowercaseString
      }
    }
  }

  public struct ShadowCollection: PropertyValue {
    public let shadows: [Shadow]

    init(_ shadows: [Shadow]) {
      self.shadows = shadows
    }

    public var stringValue: String {
      return shadows.map {$0.stringValue}.joinWithSeparator(", ")
    }
  }

  public enum Number: PropertyValue {
    case Value(Int)
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let .Value(x): return String(x)
        default: return String(self).lowercaseString
      }
    }
  }

  public enum NumberWithAuto: PropertyValue {
    case Value(Int)
    case Auto
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let .Value(x): return String(x)
        default: return String(self).lowercaseString
      }
    }
  }

  public enum NumberWithNone: PropertyValue {
    case Value(Int)
    case None
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let .Value(x): return String(x)
        default: return String(self).lowercaseString
      }
    }
  }
}
