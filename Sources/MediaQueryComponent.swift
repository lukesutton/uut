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

extension MediaQueryComponent: Hashable {
  var hashValue: Int {
    return stringValue.hashValue
  }
}

extension MediaQueryComponent: Equatable {}

func ==(lhs: MediaQueryComponent, rhs: MediaQueryComponent) -> Bool {
  return lhs.hashValue == rhs.hashValue
}
