extension Value {
  public enum Visibility: String, PropertyValue {
    case visible = "visible"
    case hidden = "hidden"
    case collapse = "collapse"
    case auto = "auto"
    case initial = "initial"
    case inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }
}
