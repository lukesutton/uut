public protocol SelectorStatementConvertible {
  var selectorStatement: SelectorStatement { get }
}

extension SelectorStatement: SelectorStatementConvertible {
  public var selectorStatement: SelectorStatement {
    return self
  }
}

extension SelectorStatementConvertible where Self: Selector {
  public var selectorStatement: SelectorStatement {
    return SelectorStatement([SelectorStatementComponent.Sel(self)])
  }
}
