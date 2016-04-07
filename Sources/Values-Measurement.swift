public protocol Measurement: Hashable, Equatable {
  var value: Double { get }
  var stringValue: String  { get }
  init(_ value: Double)
}

extension Values {
  public struct Px: Measurement {
    public let value: Double
    public let stringValue: String

    public init(_ value: Double) {
      self.value = value
      self.stringValue = "\(value)px"
    }
  }

  public struct Percent: Measurement {
    public let value: Double
    public let stringValue: String

    public init(_ value: Double) {
      self.value = value
      self.stringValue = "\(value)%"
    }
  }

  public struct Em: Measurement {
    public let value: Double
    public let stringValue: String

    public init(_ value: Double) {
      self.value = value
      self.stringValue = "\(value)em"
    }
  }

  public struct Rem: Measurement {
    public let value: Double
    public let stringValue: String

    public init(_ value: Double) {
      self.value = value
      self.stringValue = "\(value)rem"
    }
  }
}

extension Measurement {
  public var hashValue: Int {
    return stringValue.hashValue
  }
}

public func ==<T: Measurement>(lhs: T, rhs: T) -> Bool {
  return lhs.value == rhs.value
}

public func +<T: Measurement>(lhs: T, rhs: T) -> T {
  return T(lhs.value + rhs.value)
}

public func -<T: Measurement>(lhs: T, rhs: T) -> T {
  return T(lhs.value - rhs.value)
}

public func *<T: Measurement>(lhs: T, rhs: Double) -> T {
  return T(lhs.value * rhs)
}

public func *<T: Measurement>(lhs: T, rhs: T) -> T {
  return T(lhs.value * rhs.value)
}

public func /<T: Measurement>(lhs: T, rhs: Double) -> T {
  return T(lhs.value / rhs)
}

public func /<T: Measurement>(lhs: T, rhs: T) -> T {
  return T(lhs.value / rhs.value)
}
