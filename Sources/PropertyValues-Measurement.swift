extension PropertyValues {
  public enum MeasurementStandard: PropertyValue {
    case Value(Measurement)
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let Value(x): return x.stringValue
        default: return String(self).lowercaseString
      }
    }
  }

  public enum MeasurementWithNormal: PropertyValue {
    case Value(Measurement)
    case Normal
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let Value(x): return x.stringValue
        default: return String(self).lowercaseString
      }
    }
  }

  public enum MeasurementWithAuto: PropertyValue {
    case Value(Measurement)
    case Auto
    case Initial
    case Inherit

    public var stringValue: String {
      switch self {
        case let Value(x): return x.stringValue
        default: return String(self).lowercaseString
      }
    }
  }
}
