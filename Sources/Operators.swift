infix operator |- {associativity left precedence 100}

public func |-(lhs: Selector, rhs: Selector) -> SelectorStatement {
  return SelectorStatement(selectors: [lhs, rhs])
}

public func |-(lhs: SelectorStatement, rhs: Selector) -> SelectorStatement {
  return lhs.append(rhs)
}

public func |-(lhs: SelectorStatement, rhs: SelectorStatement) -> SelectorStatement {
  return lhs.concat(rhs)
}

infix operator |+ {associativity left precedence 99}

public func |+(lhs: Selector, rhs: Selector) -> SelectorStatement {
  return SelectorStatement(selectors: [lhs, SelectorOperator.PrecedingSibling, rhs])
}

public func |+(lhs: SelectorStatement, rhs: Selector) -> SelectorStatement {
  return lhs.append(SelectorOperator.PrecedingSibling, rhs)
}

public func |+(lhs: SelectorStatement, rhs: SelectorStatement) -> SelectorStatement {
  return lhs.concat(rhs)
}

infix operator |~ {associativity left precedence 98}

public func |~(lhs: Selector, rhs: Selector) -> SelectorStatement {
  return SelectorStatement(selectors: [lhs, SelectorOperator.FollowingSibling, rhs])
}

public func |~(lhs: SelectorStatement, rhs: Selector) -> SelectorStatement {
  return lhs.append(SelectorOperator.FollowingSibling, rhs)
}

public func |~(lhs: SelectorStatement, rhs: SelectorStatement) -> SelectorStatement {
  return lhs.concat(rhs)
}

infix operator |> {associativity left precedence 97}

public func |>(lhs: Selector, rhs: Selector) -> SelectorStatement {
  return SelectorStatement(selectors: [lhs, SelectorOperator.Child, rhs])
}

public func |>(lhs: SelectorStatement, rhs: Selector) -> SelectorStatement {
  return lhs.append(SelectorOperator.Child, rhs)
}

public func |>(lhs: SelectorStatement, rhs: SelectorStatement) -> SelectorStatement {
  return lhs.concat(rhs)
}

infix operator |& {associativity left precedence 96}

public func |&(lhs: Selector, rhs: Selector) -> SelectorStatement {
  return SelectorStatement(selectors: [lhs, SelectorOperator.And, rhs])
}

public func |&(lhs: SelectorStatement, rhs: Selector) -> SelectorStatement {
  return lhs.append(SelectorOperator.And, rhs)
}

public func |&(lhs: SelectorStatement, rhs: SelectorStatement) -> SelectorStatement {
  return lhs.concat(rhs)
}
