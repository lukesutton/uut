extension Value {
  public enum Position: String, PropertyValue {
    case `static` = "static"
    case absolute = "absolute"
    case fixed = "fixed"
    case relative = "relative"
    case initial = "initial"
    case inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }
}
