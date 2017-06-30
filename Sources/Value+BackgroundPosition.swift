extension Value {
  public enum BackgroundPosition: PropertyValue {
    case leftTop
    case leftCenter
    case leftBottom
    case rightTop
    case rightCenter
    case rightBottom
    case centerTop
    case center
    case centerBottom
    case absolute(Measurement, Measurement)
    case initial
    case inherit

    public var stringValue: String {
      switch self {
      case .leftTop: return "left top"
      case .leftCenter: return "left center"
      case .leftBottom: return "left bottom"
      case .rightTop: return "right top"
      case .rightCenter: return "right center"
      case .rightBottom: return "right bottom"
      case .centerTop: return "center top"
      case .center: return "center center"
      case .centerBottom: return "center bottom"
      case let .absolute(x, y): return "\(x.stringValue) \(y.stringValue)%"
      case .initial: return "initial"
      case .inherit: return "inherit"
      }
    }
  }
}
