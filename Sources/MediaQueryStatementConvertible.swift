public protocol MediaQueryStatementConvertible {
  var mediaQueryStatement: MediaQueryStatement { get }
}

extension MediaQueryStatement: MediaQueryStatementConvertible {
  public var mediaQueryStatement: MediaQueryStatement {
    return self
  }
}

extension MediaQueryStatementConvertible where Self: MediaQuery {
  public var mediaQueryStatement: MediaQueryStatement {
    return MediaQueryStatement(components: [.Query(self)])
  }
}
