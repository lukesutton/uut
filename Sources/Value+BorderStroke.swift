extension Value {
  public enum BorderStroke: String, PropertyValue {
    case dotted
    case dashed
    case solid
    case double
    case groove
    case ridge
    case inset
    case outset
    case none
    case hidden

    public var stringValue: String {
      return rawValue
    }
  }
}
