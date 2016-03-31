enum MediaQueryComponent {
  case Query(MediaQuery)
  case Operator(MediaQueryOperator)

  var stringValue: String {
    switch self {
      case let .Query(val): return val.stringValue
      case let .Operator(val): return val.stringValue
    }
  }
}
