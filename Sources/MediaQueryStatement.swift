public struct MediaQueryStatement {
  let components: [MediaQueryComponent]

  func addOperator(op: MediaQueryOperator, andStatement statement: MediaQueryStatementConvertible) -> MediaQueryStatement {
    return MediaQueryStatement(components: self.components + [.Operator(op)] + statement.mediaQueryStatement.components)
  }

  public var stringValue: String {
    return components.map {$0.stringValue}.joinWithSeparator(" ")
  }
}
