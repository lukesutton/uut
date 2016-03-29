enum SelectorStatementComponent: Equatable {
  case Sel(Selector)
  case Op(SelectorOperator)

  var stringValue: String {
    switch self {
      case let Sel(selector): return selector.stringValue
      case let Op(op): return op.stringValue
    }
  }
}

func ==(lhs: SelectorStatementComponent, rhs: SelectorStatementComponent) -> Bool {
  switch (lhs, rhs) {
    case let (.Sel(x), .Sel(y)): return x.stringValue == y.stringValue
    case let (.Op(x), .Op(y)): return x.stringValue == y.stringValue
    default: return false
  }
}
