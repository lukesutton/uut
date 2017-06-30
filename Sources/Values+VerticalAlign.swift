extension Value {
  public enum VerticalAlign: PropertyValue {
    case baseline
    case absolute(Measurement)
    case sub
    case `super`
    case top
    case textTop
    case middle
    case bottom
    case textBottom
    case initial
    case inherit

    public var stringValue: String {
      switch self {
      case let .absolute(n): return n.stringValue
      case .textTop: return "text-top"
      case .textBottom: return "text-bottom"
      default: return String(describing: self).lowercased()
      }
    }
  }
}
