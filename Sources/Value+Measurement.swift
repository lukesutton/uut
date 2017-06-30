extension Value {
  public enum Measurement: PropertyValue {
    case px(Int)
    case percent(Double)
    case em(Double)
    case rem(Double)

    public var stringValue: String {
      switch self {
      case let .px(value): return "\(value)px"
      case let .percent(value): return "\(value)%"
      case let .em(value): return "\(value)em"
      case let .rem(value): return "\(value)rem"
      }
    }
  }
}

extension Int {
  public var px: Value.Measurement {
    return .px(self)
  }

  public var percent: Value.Measurement {
    return .percent(Double(self))
  }

  public var em: Value.Measurement {
    return .em(Double(self))
  }

  public var rem: Value.Measurement {
    return .rem(Double(self))
  }
}

extension Double {
  public var px: Value.Measurement {
    return .px(Int(self))
  }

  public var percent: Value.Measurement {
    return .percent(self)
  }

  public var em: Value.Measurement {
    return .em(self)
  }

  public var rem: Value.Measurement {
    return .rem(self)
  }
}
