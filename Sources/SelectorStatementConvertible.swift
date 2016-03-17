protocol SelectorStatementConvertible {
  func toSelectorStatement() -> SelectorStatement
}

extension SelectorStatement: SelectorStatementConvertible {
  func toSelectorStatement() -> SelectorStatement {
    return self
  }
}

extension Selector: SelectorStatementConvertible {
  func toSelectorStatement() -> SelectorStatement {
    return SelectorStatement(selectors: [self])
  }
}
