public struct MediaQueryStatement {
  let components: [MediaQueryComponent]

  func addOperator(op: MediaQueryOperator, andStatement statement: MediaQueryStatementConvertible) -> MediaQueryStatement {
    return MediaQueryStatement(components: self.components + [.Operator(op)] + statement.mediaQueryStatement.components)
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
