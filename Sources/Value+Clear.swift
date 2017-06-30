extension Value {
  public enum Clear: String, PropertyValue {
    case none = "none"
    case left = "left"
    case right = "right"
    case both = "both"
    case initial = "initial"
    case inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }
}
