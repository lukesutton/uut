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
  case Link
  case Visited
  case Active
  case Hover
  case Focus
  case AttrEquals(String, String)
  case AttrContains(String, String)

  func toString() -> String {
    switch self {
      case .FirstChild: return ":first-child"
      case .LastChild: return ":last-child"
      case .Link: return ":link"
      case .Visited: return ":visited"
      case .Active: return ":active"
      case .Hover: return ":hover"
      case .Focus: return ":focus"
      case let .AttrEquals(attr, value): return "[\(attr)=\"\(value)\"]"
      case let .AttrContains(attr, value): return "[\(attr)~=\"\(value)\"]"
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

struct FollowingSiblingOperator: SelectorPartial {
  func toString() -> String {
    return "+"
  }
}

struct PrecedingSiblingOperator: SelectorPartial {
  func toString() -> String {
    return "~"
  }
}

struct ChildOperator: SelectorPartial {
  func toString() -> String {
    return ">"
  }
}

struct AndOperator: SelectorPartial {
  func toString() -> String {
    return ","
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

struct All: SelectorPartial, SelectorConvertible {
  func toString() -> String {
    return "*"
  }
}
