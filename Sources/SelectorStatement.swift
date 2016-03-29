public struct SelectorStatement {
  let selectors: [SelectorStatementComponent]

  init(_ selectors: [SelectorStatementComponent]) {
    self.selectors = selectors
  }

  func append(selectors: SelectorStatementComponent...) -> SelectorStatement {
    return SelectorStatement(self.selectors + selectors)
  }

  func concat(statement: SelectorStatement) -> SelectorStatement {
    return SelectorStatement(self.selectors + statement.selectors)
  }

  public var stringValue: String {
    let mapped = selectors.map {$0.stringValue}
    return mapped.joinWithSeparator(" ")
  }
}

func ==(lhs: SelectorStatement, rhs: SelectorStatement) -> Bool {
  return lhs.selectors == rhs.selectors
}
