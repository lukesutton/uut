extension Value {
  public enum Float: String, PropertyValue {
    case none = "none"
    case left = "left"
    case right = "right"
    case initial = "initial"
    case inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }
}
