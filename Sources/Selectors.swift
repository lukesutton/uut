protocol SelectorPartial {

}

protocol SelectorConvertible {
  func toSelector() -> Selector
}

extension SelectorConvertible where Self: SelectorPartial {
  func toSelector() -> Selector {
    return Selector([self])
  }
}

struct Selector: SelectorConvertible {
  let partials: [SelectorPartial]
  init(_ partials: [SelectorPartial]) {
    self.partials = partials
  }

  func toSelector() -> Selector {
    return self
  }
}

struct SiblingOperator: SelectorPartial {}

struct ClassName: SelectorPartial, SelectorConvertible {
  let label: String
  init(_ label: String) {
    self.label = label
  }
}

struct ID: SelectorPartial, SelectorConvertible {
  let label: String
  init(_ label: String) {
    self.label = label
  }
}

func /(lhs: SelectorPartial, rhs: SelectorPartial) -> Selector {
  return Selector([lhs, rhs])
}

func /(lhs: Selector, rhs: SelectorPartial) -> Selector {
  return Selector(lhs.partials + [rhs])
}

func +(lhs: SelectorPartial, rhs: SelectorPartial) -> Selector {
  return Selector([lhs, SiblingOperator(), rhs])
}

func +(lhs: Selector, rhs: SelectorPartial) -> Selector {
  return Selector(lhs.partials + [SiblingOperator(), rhs])
}
