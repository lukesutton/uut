infix operator |- {associativity left precedence 100}

public func |-(lhs: Selector, rhs: Selector) -> SelectorStatement {
  return SelectorStatement([component(lhs), component(rhs)])
}

public func |-(lhs: SelectorStatement, rhs: Selector) -> SelectorStatement {
  return lhs.append(component(rhs))
}

public func |-(lhs: SelectorStatement, rhs: SelectorStatement) -> SelectorStatement {
  return lhs.concat(rhs)
}

infix operator |+ {associativity left precedence 99}

public func |+(lhs: Selector, rhs: Selector) -> SelectorStatement {
  return SelectorStatement([component(lhs), component(SelectorOperators.PrecedingSibling()), component(rhs)])
}

public func |+(lhs: SelectorStatement, rhs: Selector) -> SelectorStatement {
  return lhs.append(component(SelectorOperators.PrecedingSibling()), component(rhs))
}

public func |+(lhs: SelectorStatement, rhs: SelectorStatement) -> SelectorStatement {
  return lhs.append([component(SelectorOperators.PrecedingSibling())] + rhs.selectors)
}

infix operator |~ {associativity left precedence 98}

public func |~(lhs: Selector, rhs: Selector) -> SelectorStatement {
  return SelectorStatement([component(lhs), component(SelectorOperators.FollowingSibling()), component(rhs)])
}

public func |~(lhs: SelectorStatement, rhs: Selector) -> SelectorStatement {
  return lhs.append(component(SelectorOperators.FollowingSibling()), component(rhs))
}

public func |~(lhs: SelectorStatement, rhs: SelectorStatement) -> SelectorStatement {
  return lhs.append([component(SelectorOperators.FollowingSibling())] + rhs.selectors)
}

infix operator |> {associativity left precedence 97}

public func |>(lhs: Selector, rhs: Selector) -> SelectorStatement {
  return SelectorStatement([component(lhs), component(SelectorOperators.Child()), component(rhs)])
}

public func |>(lhs: SelectorStatement, rhs: Selector) -> SelectorStatement {
  return lhs.append(component(SelectorOperators.Child()), component(rhs))
}

public func |>(lhs: SelectorStatement, rhs: SelectorStatement) -> SelectorStatement {
  return lhs.append([component(SelectorOperators.Child())] + rhs.selectors)
}

infix operator |& {associativity left precedence 96}

public func |&(lhs: Selector, rhs: Selector) -> SelectorStatement {
  return SelectorStatement([component(lhs), component(SelectorOperators.And()), component(rhs)])
}

public func |&(lhs: SelectorStatement, rhs: Selector) -> SelectorStatement {
  return lhs.append(component(SelectorOperators.And()), component(rhs))
}

public func |&(lhs: SelectorStatement, rhs: SelectorStatement) -> SelectorStatement {
  return lhs.append([component(SelectorOperators.And())] + rhs.selectors)
}

private func component(value: Selector) -> SelectorStatementComponent {
  return SelectorStatementComponent.Sel(value)
}

private func component(value: SelectorOperator) -> SelectorStatementComponent {
  return SelectorStatementComponent.Op(value)
}
