extension Value {
  public enum BackgroundSize: PropertyValue {
    case auto
    case width(Measurement)
    case widthAndHeight(Measurement, Measurement)
    case cover
    case contain
    case initial
    case inherit

    public var stringValue: String {
      switch self {
      case let .width(m): return "\(m.stringValue) auto"
      case let .widthAndHeight(w, h): return "\(w.stringValue) \(h.stringValue)"
      default: return String(describing: self)
      }
    }
  }
}
