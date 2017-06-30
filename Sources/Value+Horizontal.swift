extension Value {
  public enum Horizontal: PropertyValue {
    case left
    case right
    case center
    case value(Measurement)
    case initial
    case inherit

    public var stringValue: String {
      switch self {
      case let .value(m): return m.stringValue
      default: return String(describing: self)
      }
    }
  }
}
