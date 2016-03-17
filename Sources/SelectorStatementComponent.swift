protocol SelectorStatementComponent {
  func toString() -> String
}

extension SelectorOperator: SelectorStatementComponent {
  func toString() -> String {
    switch self {
      case PrecedingSibling: return "+"
      case FollowingSibling: return "~"
      case Child: return ">"
      case And: return ","
    }
  }
}

extension Selector: SelectorStatementComponent {
  func toString() -> String {
    switch self {
      case let Class(label, selectors):
        return toStringWithAssociated(".\(label)", selectors: selectors)
      case let ID(label, selectors):
        return toStringWithAssociated("#\(label)", selectors: selectors)
      case let Element(tag, selectors):
        return toStringWithAssociated(tag, selectors: selectors)
      case let FirstChild(selectors):
        return toStringWithAssociated(":first-child", selectors: selectors)
      case let LastChild(selectors):
        return toStringWithAssociated(":last-child", selectors: selectors)
      case let Link(selectors):
        return toStringWithAssociated(":link", selectors: selectors)
      case let Visited(selectors):
        return toStringWithAssociated(":visited", selectors: selectors)
      case let Active(selectors):
        return toStringWithAssociated(":active", selectors: selectors)
      case let Hover(selectors):
        return toStringWithAssociated(":hover", selectors: selectors)
      case let Focus(selectors):
        return toStringWithAssociated(":focus", selectors: selectors)
      case let AttrEquals(label, value, selectors):
        return toStringWithAssociated("[\(label)=\"\(value)\"]", selectors: selectors)
      case let AttrContains(label, value, selectors):
        return toStringWithAssociated("[\(label)~=\"\(value)\"]", selectors: selectors)
      case All:
        return "*"
    }
  }

  private func toStringWithAssociated(head: String, selectors: [Selector]) -> String {
    if selectors.isEmpty {
      return head
    }
    else {
      let tail = selectors.map {$0.toString()}.joinWithSeparator("")
      return "\(head)\(tail)"
    }
  }
}
