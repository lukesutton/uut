public protocol SelectorStatementConvertible {
  func toSelectorStatement() -> SelectorStatement
}

extension SelectorStatement: SelectorStatementConvertible {
  public func toSelectorStatement() -> SelectorStatement {
    return self
  }
}

extension Selector: SelectorStatementConvertible {
  public func toSelectorStatement() -> SelectorStatement {
    return SelectorStatement(selectors: [self])
  }
}
