public func |&(lhs: MediaQueryStatementConvertible, rhs: MediaQueryStatementConvertible) -> MediaQueryStatement {
  return lhs.mediaQueryStatement.addOperator(MediaQueryOperators.And(), andStatement: rhs)
}

public func ||(lhs: MediaQueryStatementConvertible, rhs: MediaQueryStatementConvertible) -> MediaQueryStatement {
  return lhs.mediaQueryStatement.addOperator(MediaQueryOperators.Or(), andStatement: rhs)
}

public func not(input: MediaQueryStatementConvertible) -> MediaQueryStatement {
  let statement = input.mediaQueryStatement
  return MediaQueryStatement(components: [.Operator(MediaQueryOperators.Not())] + statement.components)
}
