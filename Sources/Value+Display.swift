extension Value {
  public enum Display: String, PropertyValue {
    case inline = "inline"
    case block = "block"
    case flex = "flex"
    case inlineBlock = "inline-block"
    case inlineFlex = "inline-flex"
    case listItem = "list-item"
    case runIn = "run-in"
    case table = "table"
    case tableCaption = "table-caption"
    case tableColumnGroup = "table-column-group"
    case tableHeaderGroup = "table-header-group"
    case tableFooterGroup = "table-footer-group"
    case tableRowGroup = "table-row-group"
    case tableCell = "table-cell"
    case tableColumn = "table-column"
    case tableRow = "table-row"
    case none = "none"
    case initial = "initial"
    case inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }
}
