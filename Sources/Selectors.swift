protocol SelectorPartial {
  func toString() -> String
}

protocol SelectorConvertible {
  func toSelector() -> Selector
}

extension SelectorConvertible where Self: SelectorPartial {
  func toSelector() -> Selector {
    return Selector([self])
  }
}

// Psuedo-selectors, attribute selectors etc.
enum SelectorModifier {
  case FirstChild
  case LastChild
  case Hover

  func toString() -> String {
    switch self {
      case FirstChild: return ":first-child"
      case LastChild: return ":last-child"
      case Hover: return ":hover"
    }
  }
}

protocol SelectorWithModifiers {}

extension SelectorWithModifiers {
  func modifiersToString(selectors: [SelectorModifier]) -> String {
    return selectors.map {$0.toString()}.joinWithSeparator("")
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

  func toString() -> String {
    return partials.map {$0.toString()}.joinWithSeparator(" ")
  }
}

struct SiblingOperator: SelectorPartial {
  func toString() -> String {
    return "+"
  }
}

struct ClassName: SelectorPartial, SelectorConvertible, SelectorWithModifiers {
  let label: String
  let modifiers: [SelectorModifier]
  init(_ label: String, _ modifiers: SelectorModifier...) {
    self.label = label
    self.modifiers = modifiers
  }

  func toString() -> String {
    return ".\(self.label)\(self.modifiersToString(modifiers))"
  }
}

struct ID: SelectorPartial, SelectorConvertible {
  let label: String
  init(_ label: String) {
    self.label = label
  }

  func toString() -> String {
    return "#\(self.label)"
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
