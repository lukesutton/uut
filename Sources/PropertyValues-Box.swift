extension PropertyValues {
  public enum Display: String, PropertyValue {
    case Inline = "inline"
    case Block = "block"
    case Flex = "flex"
    case InlineBlock = "inline-block"
    case InlineFlex = "inline-flex"
    case ListItem = "list-item"
    case RunIn = "run-in"
    case Table = "table"
    case TableCaption = "table-caption"
    case TableColumnGroup = "table-column-group"
    case TableHeaderGroup = "table-header-group"
    case TableFooterGroup = "table-footer-group"
    case TableRowGroup = "table-row-group"
    case TableCell = "table-cell"
    case TableColumn = "table-column"
    case TableRow = "table-row"
    case None = "none"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum Float: String, PropertyValue {
    case None = "none"
    case Left = "left"
    case Right = "right"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum BoxMeasurement: PropertyValue {
    case Auto
    case Unit(Values.Unit)
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let Unit(n): return n.stringValue
        default: return String(self).lowercaseString
      }
    }
  }

  public enum Overflow: String, PropertyValue {
    case Visible = "visible"
    case Hidden = "hidden"
    case Scroll = "scroll"
    case Auto = "auto"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum Visibility: String, PropertyValue {
    case Visible = "visible"
    case Hidden = "hidden"
    case Collapse = "collapse"
    case Auto = "auto"
    case Initial = "initial"
    case Inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }

  public enum VerticalAlign: PropertyValue {
    case Baseline
    case Unit(Values.Unit)
    case Sub
    case Super
    case Top
    case TextTop
    case Middle
    case Bottom
    case TextBottom
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let Unit(n): return n.stringValue
        case TextTop: return "text-top"
        case TextBottom: return "text-bottom"
        default: return String(self).lowercaseString
      }
    }
  }
}
