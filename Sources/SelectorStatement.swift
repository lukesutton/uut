struct SelectorStatement {
  let selectors: [SelectorStatementComponent]

  func append(selectors: SelectorStatementComponent...) -> SelectorStatement {
    return SelectorStatement(selectors: self.selectors + selectors)
  }

  func toString() -> String {
    let mapped = selectors.map {$0.toString()}
    return mapped.joinWithSeparator(" ")
  }
}
