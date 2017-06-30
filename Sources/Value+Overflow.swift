extension Value {
  public enum Overflow: String, PropertyValue {
    case visible = "visible"
    case hidden = "hidden"
    case scroll = "scroll"
    case auto = "auto"
    case initial = "initial"
    case inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }
}
