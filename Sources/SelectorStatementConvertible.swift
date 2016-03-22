protocol SelectorStatementConvertible {
  var selectorStatement: SelectorStatement { get }
}

extension SelectorStatement: SelectorStatementConvertible {
  var selectorStatement: SelectorStatement {
    return self
  }
}

extension SelectorStatementConvertible where Self: Selector {
  var selectorStatement: SelectorStatement {
    return SelectorStatement([SelectorStatementComponent.Sel(self)])
  }
}
