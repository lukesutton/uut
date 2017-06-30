extension Value {
  public enum BoxSizing: String, PropertyValue {
    case borderBox = "border-box"
    case contentBox = "content-box"
    case initial = "initial"
    case inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }
}
