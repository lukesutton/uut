extension Value {
  public enum BackgroundSize: PropertyValue {
    case absolute(Measurement, Measurement)
    case auto
    case cover
    case contain
    case initial
    case inherit

    public var stringValue: String {
      switch self {
      case let .absolute(x, y): return "\(x.stringValue) \(y.stringValue)"
      default: return String(describing: self)
      }
    }
  }
}
