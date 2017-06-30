public enum HTMLElement {
  case html
  case head
  case body
  case h1
  case h2
  case h3
  case h4
  case h5
  case h6
  case h7
  case h8
  case h9
  case p
  case a
  case ul
  case li
  case div
  case custom(String)

  var stringValue: String {
  switch self {
      case let .custom(el): return el
      default: return String(describing: self)
    }
  }
}
