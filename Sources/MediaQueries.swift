public struct MediaQueryStatement {
  let components: [MediaQueryComponent]

  func addOperator(op: MediaQueryComponent, andStatement statement: MediaQueryStatementConvertible) -> MediaQueryStatement {
    return MediaQueryStatement(components: self.components + [op] + statement.mediaQueryStatement.components)
  }

  public var stringValue: String {
    return components.map {$0.stringValue}.joinWithSeparator(" ")
  }
}

extension MediaQueryStatement: Hashable {
  public var hashValue: Int {
    return components.reduce(0) {$0 + $1.hashValue}
  }
}

extension MediaQueryStatement: Equatable {}

public func ==(lhs: MediaQueryStatement, rhs: MediaQueryStatement) -> Bool {
  return lhs.components == rhs.components
}

public protocol MediaQueryStatementConvertible {
  var mediaQueryStatement: MediaQueryStatement { get }
}

extension MediaQueryStatement: MediaQueryStatementConvertible {
  public var mediaQueryStatement: MediaQueryStatement {
    return self
  }
}

extension MediaQueryComponent: MediaQueryStatementConvertible {
  public var mediaQueryStatement: MediaQueryStatement {
    return MediaQueryStatement(components: [self])
  }
}

public struct MediaQueryNames {
  private init() {}

  // Literals
  public static let all = "all"
  public static let aural = "aural"
  public static let braille = "braille"
  public static let handheld = "handheld"
  public static let print = "print"
  public static let projection = "projection"
  public static let screen = "screen"
  public static let tty = "tty"
  public static let tv = "tv"
  public static let embossed = "embossed"

  // Values
  public static let width = "width"
  public static let minWidth = "minWidth"
  public static let maxWidth = "maxWidth"
  public static let height = "height"
  public static let minHeight = "minHeight"
  public static let maxHeight = "maxHeight"
  public static let deviceWidth = "deviceWidth"
  public static let minDeviceWidth = "minDeviceWidth"
  public static let maxDeviceWidth = "maxDeviceWidth"
  public static let deviceHeight = "deviceHeight"
  public static let minDeviceHeight = "minDeviceHeight"
  public static let maxDeviceHeight = "maxDeviceHeight"

  // Operators
  public static let and = "and"
  public static let or = "or"
  public static let not = "not"
}

public enum MediaQueryComponent {
  case Literal(String, String)
  case Value(String, String, String)
  case Operator(String, String)

  public var name: String {
    switch self {
      case let Literal(n, _): return n
      case let Value(n, _, _): return n
      case let Operator(n, _): return n
    }
  }

  public var stringValue: String {
    switch self {
      case let Literal(_, x): return x
      case let Value(_, x, y): return "(\(x): \(y))"
      case let Operator(_, x): return x
    }
  }
}

extension MediaQueryComponent: Hashable {
  public var hashValue: Int {
    return "\(self)\(stringValue)".hashValue
  }
}

extension MediaQueryComponent: Equatable {}

public func ==(lhs: MediaQueryComponent, rhs: MediaQueryComponent) -> Bool {
  return lhs.hashValue == rhs.hashValue
}

public struct MediaQueries {
  private init() {}

  public static let all = MediaQueryComponent.Literal(MediaQueryNames.all, "all")
  public static let aural = MediaQueryComponent.Literal(MediaQueryNames.aural, "aural")
  public static let braille = MediaQueryComponent.Literal(MediaQueryNames.braille, "braille")
  public static let handheld = MediaQueryComponent.Literal(MediaQueryNames.handheld, "handheld")
  public static let print = MediaQueryComponent.Literal(MediaQueryNames.print, "print")
  public static let projection = MediaQueryComponent.Literal(MediaQueryNames.projection, "projection")
  public static let screen = MediaQueryComponent.Literal(MediaQueryNames.screen, "screen")
  public static let tty = MediaQueryComponent.Literal(MediaQueryNames.tty, "tty")
  public static let tv = MediaQueryComponent.Literal(MediaQueryNames.tv, "tv")
  public static let embossed = MediaQueryComponent.Literal(MediaQueryNames.embossed, "tv")

  public static func width(measurement: Measurement) -> MediaQueryComponent {
    return .Value(MediaQueryNames.width, "width", measurement.stringValue)
  }

  public static func minWidth(measurement: Measurement) -> MediaQueryComponent {
    return .Value(MediaQueryNames.minWidth, "min-width", measurement.stringValue)
  }

  public static func maxWidth(measurement: Measurement) -> MediaQueryComponent {
    return .Value(MediaQueryNames.maxWidth, "max-width", measurement.stringValue)
  }

  public static func height(measurement: Measurement) -> MediaQueryComponent {
    return .Value(MediaQueryNames.height, "height", measurement.stringValue)
  }

  public static func minHeight(measurement: Measurement) -> MediaQueryComponent {
    return .Value(MediaQueryNames.minHeight, "min-height", measurement.stringValue)
  }

  public static func maxHeight(measurement: Measurement) -> MediaQueryComponent {
    return .Value(MediaQueryNames.maxHeight, "max-height", measurement.stringValue)
  }

  public static func deviceWidth(measurement: Measurement) -> MediaQueryComponent {
    return .Value(MediaQueryNames.deviceWidth, "device-width", measurement.stringValue)
  }

  public static func minDeviceWidth(measurement: Measurement) -> MediaQueryComponent {
    return .Value(MediaQueryNames.minDeviceWidth, "min-device-width", measurement.stringValue)
  }

  public static func maxDeviceWidth(measurement: Measurement) -> MediaQueryComponent {
    return .Value(MediaQueryNames.maxDeviceHeight, "max-device-width", measurement.stringValue)
  }

  // Operators
  public static let and = MediaQueryComponent.Operator(MediaQueryNames.and, "and")
  public static let or = MediaQueryComponent.Operator(MediaQueryNames.or, ",")
  public static let not = MediaQueryComponent.Operator(MediaQueryNames.not, "not")

  public static func not(input: MediaQueryStatementConvertible) -> MediaQueryStatement {
    let statement = input.mediaQueryStatement
    return MediaQueryStatement(components: [MediaQueries.not] + statement.components)
  }
}

public func |&(lhs: MediaQueryStatementConvertible, rhs: MediaQueryStatementConvertible) -> MediaQueryStatement {
  return lhs.mediaQueryStatement.addOperator(MediaQueries.and, andStatement: rhs)
}

public func ||(lhs: MediaQueryStatementConvertible, rhs: MediaQueryStatementConvertible) -> MediaQueryStatement {
  return lhs.mediaQueryStatement.addOperator(MediaQueries.or, andStatement: rhs)
}
