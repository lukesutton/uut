extension PropertyValues {
  public enum AlignContent: String, PropertyValue {
    case Stretch = "stretch"
    case Center = "center"
    case FlexStart = "flex-start"
    case FlexEnd = "flex-end"
    case SpaceBetween = "space-between"
    case SpaceAround = "space-around"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return self.rawValue
    }
  }

  public enum AlignItems: String, PropertyValue {
    case Stretch = "stretch"
    case Center = "center"
    case FlexStart = "flex-start"
    case FlexEnd = "flex-end"
    case Baseline = "baseline"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return self.rawValue
    }
  }

  public enum AlignSelf: String, PropertyValue {
    case Auto = "auto"
    case Stretch = "stretch"
    case Center = "center"
    case FlexStart = "flex-start"
    case FlexEnd = "flex-end"
    case Baseline = "baseline"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return self.rawValue
    }
  }
  
  public enum Flex: PropertyValue {
    case FlexGrow(Number)
    case FlexShrink(Number)
    case FlexBasis(Unit)
    case Auto
    case None
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let FlexGrow(n): return "flex-grow: \(n.stringValue)"
        case let FlexShrink(n): return "flex-shrink: \(n.stringValue)"
        case let FlexBasis(n): return "flex-basis: \(n.stringValue)"
        default: return String(self).lowercaseString
      }
    }
  }

  public enum FlexDirection: String, PropertyValue {
    case Row = "row"
    case RowReverse = "row-reverse"
    case Column = "column"
    case ColumnReverse = "column-reverse"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum FlexWrap: String, PropertyValue {
    case NoWrap = "nowrap"
    case Wrap = "wrap"
    case WrapReverse = "wrap-reverse"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum FlexFlow: PropertyValue {
    case FlexDirection(PropertyValues.FlexDirection)
    case FlexWrap(PropertyValues.FlexWrap)
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let FlexDirection(x): return x.stringValue
        case let FlexWrap(x): return x.stringValue
        default: return String(self).lowercaseString
      }
    }
  }

  public enum JustifyContent: String, PropertyValue {
    case FlexStart = "flex-start"
    case FlexEnd = "flex-end"
    case Center = "center"
    case SpaceBetween = "space-between"
    case SpaceAround = "space-around"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }
}
