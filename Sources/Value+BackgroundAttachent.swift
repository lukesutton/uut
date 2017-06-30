extension Value {
  public enum BackgroundAttachment: String, PropertyValue {
    case scroll = "scroll"
    case fixed = "fixed"
    case local = "local"
    case initial = "initial"
    case inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }
}
