infix operator | {associativity left precedence 200}

func |(lhs: SelectorPartial, rhs: SelectorPartial) -> Selector {
  return Selector([lhs, rhs])
}

func |(lhs: Selector, rhs: SelectorPartial) -> Selector {
  return Selector(lhs.partials + [rhs])
}

func |(lhs: SelectorPartial, rhs: Selector) -> Selector {
  return Selector([lhs] + rhs.partials)
}

infix operator |+ {associativity left precedence 200}

func |+(lhs: SelectorPartial, rhs: SelectorPartial) -> Selector {
  return Selector([lhs, FollowingSiblingOperator(), rhs])
}

func |+(lhs: Selector, rhs: SelectorPartial) -> Selector {
  return Selector(lhs.partials + [FollowingSiblingOperator(), rhs])
}

func |+(lhs: SelectorPartial, rhs: Selector) -> Selector {
  return Selector([lhs, FollowingSiblingOperator()] + rhs.partials)
}

infix operator |~ {associativity left precedence 200}

func |~(lhs: SelectorPartial, rhs: SelectorPartial) -> Selector {
  return Selector([lhs, PrecedingSiblingOperator(), rhs])
}

func |~(lhs: Selector, rhs: SelectorPartial) -> Selector {
  return Selector(lhs.partials + [PrecedingSiblingOperator(), rhs])
}

func |~(lhs: SelectorPartial, rhs: Selector) -> Selector {
  return Selector([lhs, PrecedingSiblingOperator()] + rhs.partials)
}

infix operator |> {associativity left precedence 200}

func |>(lhs: SelectorPartial, rhs: SelectorPartial) -> Selector {
  return Selector([lhs, ChildOperator(), rhs])
}

func |>(lhs: Selector, rhs: SelectorPartial) -> Selector {
  return Selector(lhs.partials + [ChildOperator(), rhs])
}

func |>(lhs: SelectorPartial, rhs: Selector) -> Selector {
  return Selector([lhs, ChildOperator()] + rhs.partials)
}

infix operator |& {associativity left precedence 200}

func |&(lhs: SelectorPartial, rhs: SelectorPartial) -> Selector {
  return Selector([lhs, AndOperator(), rhs])
}

func |&(lhs: Selector, rhs: SelectorPartial) -> Selector {
  return Selector(lhs.partials + [AndOperator(), rhs])
}

func |&(lhs: SelectorPartial, rhs: Selector) -> Selector {
  return Selector([lhs, AndOperator()] + rhs.partials)
}
