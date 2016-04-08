extension PropertyValues {
  public enum BorderCollapse: String, PropertyValue {
    case Separate = "separate"
    case Collapse = "collapse"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum BorderSpacing: PropertyValue {
    case Both(Measurement)
    case Each(Measurement, Measurement)
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let Both(x): return x.stringValue
        case let Each(x, y): return "\(x.stringValue) \(y.stringValue)"
        case Initial: return "initial"
        case Inherit: return "inherit"
      }
    }
  }

  public enum CaptionSide: String, PropertyValue {
    case Top = "top"
    case Bottom = "bottom"
    case Intitial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum EmptyCells: String, PropertyValue {
    case Show = "show"
    case Hide = "hide"
    case Intitial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum TableLayout: String, PropertyValue {
    case Auto = "auto"
    case Fixed = "fixed"
    case Intitial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }
}
