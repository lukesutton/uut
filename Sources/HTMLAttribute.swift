public enum HTMLAttribute {
  case present
  case equals(String)
  case contains(String)

  var stringValue: String {
    switch self {
      case .present: return ""
      case let .equals(value): return "=\(value)"
      case let .contains(value): return "~=\(value)"
    }
  }
}
