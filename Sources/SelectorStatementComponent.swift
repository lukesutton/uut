enum SelectorStatementComponent {
  case Sel(Selector)
  case Op(SelectorOperator)

  var stringValue: String {
    switch self {
      case let Sel(selector): return selector.stringValue
      case let Op(op): return op.stringValue
    }
  }
}
