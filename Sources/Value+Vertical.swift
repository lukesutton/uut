extension Value {
  public enum VerticalValue: PropertyValue {
    case top
    case bottom
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
