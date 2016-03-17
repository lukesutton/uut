infix operator | {associativity left precedence 100}

func |(lhs: Selector, rhs: Selector) -> SelectorStatement {
  return SelectorStatement(selectors: [lhs, rhs])
}

func |(lhs: SelectorStatement, rhs: Selector) -> SelectorStatement {
  return lhs.append(rhs)
}

func |(lhs: SelectorStatement, rhs: SelectorStatement) -> SelectorStatement {
  return lhs.concat(rhs)
}

infix operator |+ {associativity left precedence 99}

func |+(lhs: Selector, rhs: Selector) -> SelectorStatement {
  return SelectorStatement(selectors: [rhs, SelectorOperator.PrecedingSibling, lhs])
}

func |+(lhs: SelectorStatement, rhs: Selector) -> SelectorStatement {
  return lhs.append(SelectorOperator.PrecedingSibling, rhs)
}

func |+(lhs: SelectorStatement, rhs: SelectorStatement) -> SelectorStatement {
  return lhs.concat(rhs)
}

infix operator |~ {associativity left precedence 98}

func |~(lhs: Selector, rhs: Selector) -> SelectorStatement {
  return SelectorStatement(selectors: [lhs, SelectorOperator.FollowingSibling, rhs])
}

func |~(lhs: SelectorStatement, rhs: Selector) -> SelectorStatement {
  return lhs.append(SelectorOperator.FollowingSibling, rhs)
}

func |~(lhs: SelectorStatement, rhs: SelectorStatement) -> SelectorStatement {
  return lhs.concat(rhs)
}

infix operator |> {associativity left precedence 97}

func |>(lhs: Selector, rhs: Selector) -> SelectorStatement {
  return SelectorStatement(selectors: [lhs, SelectorOperator.Child, rhs])
}

func |>(lhs: SelectorStatement, rhs: Selector) -> SelectorStatement {
  return lhs.append(SelectorOperator.Child, rhs)
}

func |>(lhs: SelectorStatement, rhs: SelectorStatement) -> SelectorStatement {
  return lhs.concat(rhs)
}

infix operator |& {associativity left precedence 96}

func |&(lhs: Selector, rhs: Selector) -> SelectorStatement {
  return SelectorStatement(selectors: [lhs, SelectorOperator.And, rhs])
}

func |&(lhs: SelectorStatement, rhs: Selector) -> SelectorStatement {
  return lhs.append(SelectorOperator.And, rhs)
}

func |&(lhs: SelectorStatement, rhs: SelectorStatement) -> SelectorStatement {
  return lhs.concat(rhs)
}
