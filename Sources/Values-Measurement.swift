public protocol Measurement {
  var value: Double { get }
  var stringValue: String  { get }
  init(_ value: Double)
}

extension Values {
  public struct Px: Measurement, Hashable, Equatable {
    public let value: Double
    public let stringValue: String

    public init(_ value: Double) {
      self.value = value
      self.stringValue = formatDouble(value) + "px"
    }
  }

  public struct Percent: Measurement, Hashable, Equatable {
    public let value: Double
    public let stringValue: String

    public init(_ value: Double) {
      self.value = value
      self.stringValue = formatDouble(value) + "%"
    }
  }

  public struct Em: Measurement, Hashable, Equatable {
    public let value: Double
    public let stringValue: String

    public init(_ value: Double) {
      self.value = value
      self.stringValue = formatDouble(value) + "em"
    }
  }

  public struct Rem: Measurement, Hashable, Equatable {
    public let value: Double
    public let stringValue: String

    public init(_ value: Double) {
      self.value = value
      self.stringValue = formatDouble(value) + "rem"
    }
  }
}

private func formatDouble(value: Double) -> String {
  if value % 1 == 0 {
    return String(Int(value))
  }
  else {
    return String(value)
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
