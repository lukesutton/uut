// Selector statement

public protocol SelectorStatementConvertible {
  var selectorStatement: SelectorStatement { get }
  var isEmpty: Bool { get }
}

extension SelectorStatement: SelectorStatementConvertible {
  public var selectorStatement: SelectorStatement {
    return self
  }

  public var isEmpty: Bool {
    return components.isEmpty
  }
}

extension SelectorComponent: SelectorStatementConvertible {
  public var selectorStatement: SelectorStatement {
    return SelectorStatement(components: [self])
  }

  public var isEmpty: Bool {
    return false
  }
}

public struct SelectorStatement {
  let components: [SelectorComponent]

  func append(statement: SelectorStatementConvertible) -> SelectorStatement {
    return SelectorStatement(components: self.components + statement.selectorStatement.components)
  }

  func append(before: SelectorComponent, _ statement: SelectorStatementConvertible) -> SelectorStatement {
    return SelectorStatement(components: self.components + [before] + statement.selectorStatement.components)
  }

  public var stringValue: String {
    return components.map {$0.stringValue}.joinWithSeparator(" ")
  }
}

extension SelectorStatement: Equatable {}

public func ==(lhs: SelectorStatement, rhs: SelectorStatement) -> Bool {
  return lhs.components == rhs.components
}

public struct SelectorNames {
  private init() {}

  // Selectors
  static let classname = "classname"
  static let id = "id"
  static let all = "all"
  static let hasAttr = "hasAttr"
  static let attrEquals = "attrEquals"
  static let attrContains = "attrContains"
  static let attrStartsWith = "attrStartsWith"
  static let attrEndsWith = "attrEndsWith"
  static let element = "element"

  // Psuedo Selectors
  static let active = "active"
  static let after = "after"
  static let before = "before"
  static let checked = "checked"
  static let disabled = "disabled"
  static let empty = "empty"
  static let enabled = "enabled"
  static let firstChild = "firstChild"
  static let firstLetter = "firstLetter"
  static let firstLine = "firstLine"
  static let firstOfType = "firstOfType"
  static let focus = "focus"
  static let hover = "hover"
  static let inRange = "inRange"
  static let lang = "lang"
  static let lastChild = "lastChild"
  static let lastOfType = "lastOfType"
  static let link = "link"
  static let nthChild = "nthChild"
  static let nthLastChild = "nthLastChild"
  static let nthLastOfType = "nthLastOfType"
  static let nthOfType = "nthOfType"
  static let not = "not"
  static let onlyOfType = "onlyOfType"
  static let onlyChild = "onlyChild"
  static let optional = "optional"
  static let outOfRange = "outOfRange"
  static let readOnly = "readOnly"
  static let readWrite = "readWrite"
  static let required = "required"
  static let root = "root"
  static let selection = "selection"

  // Operators
  static let child = "child"
  static let precedingSibling = "precedingSibling"
  static let followingSibling = "followingSibling"
  static let and = "and"
}

public enum SelectorComponent: Equatable {
  case Selector(name: String, value: String, associated: [SelectorComponent])
  case PsuedoSelector(name: String, value: String, associated: [SelectorComponent])
  case Operator(name: String, value: String)

  public var name: String {
    switch self {
      case let Selector(n, _, _): return n
      case let PsuedoSelector(n, _, _): return n
      case let Operator(n, _): return n
    }
  }

  var stringValue: String {
    switch self {
      case let Selector(_, value, associated):
        return value + associated.map {$0.stringValue}.joinWithSeparator("")
      case let PsuedoSelector(_, value, associated):
        return value + associated.map {$0.stringValue}.joinWithSeparator("")
      case let Operator(_, value):
        return value
    }
  }
}

public func ==(lhs: SelectorComponent, rhs: SelectorComponent) -> Bool {
  switch (lhs, rhs) {
    case (.Selector, .Selector): return lhs.stringValue == rhs.stringValue
    case (.PsuedoSelector, .PsuedoSelector): return lhs.stringValue == rhs.stringValue
    case (.Operator, .Operator): return lhs.stringValue == rhs.stringValue
    default: return false
  }
}

// Selectors
public struct Selectors {
  private init() {}

  public static func classname(value: String, _ associated: SelectorComponent...) -> SelectorComponent {
    return .Selector(name: SelectorNames.classname, value: ".\(value)", associated: associated)
  }

  public static func id(value: String, _ associated: SelectorComponent...) -> SelectorComponent {
    return .Selector(name: SelectorNames.id, value: "#\(value)", associated: associated)
  }

  public static func hasAttr(value: String, _ associated: SelectorComponent...) -> SelectorComponent {
    return .Selector(name: SelectorNames.hasAttr, value: "[\(value)]", associated: associated)
  }

  public static func attrEquals(label: String, _ value: String, _ associated: SelectorComponent...) -> SelectorComponent {
    return .Selector(name: SelectorNames.attrEquals, value: "[\(label)=\"\(value)\"]", associated: associated)
  }

  public static func attrContains(label: String, _ value: String, _ associated: SelectorComponent...) -> SelectorComponent {
    return .Selector(name: SelectorNames.attrContains, value: "[\(label)*=\"\(value)\"]", associated: associated)
  }

  public static func attrStartsWith(label: String, _ value: String, _ associated: SelectorComponent...) -> SelectorComponent {
    return .Selector(name: SelectorNames.attrStartsWith, value: "[\(label)^=\"\(value)\"]", associated: associated)
  }

  public static func attrEndsWith(label: String, _ value: String, _ associated: SelectorComponent...) -> SelectorComponent {
    return .Selector(name: SelectorNames.attrEndsWith, value: "[\(label)$=\"\(value)\"]", associated: associated)
  }

  public static func element(value: String, _ associated: SelectorComponent...) -> SelectorComponent {
    return .Selector(name: SelectorNames.element, value: value, associated: associated)
  }

  public let all = SelectorComponent.Selector(name: SelectorNames.all, value: "*", associated: [])

  public static func all(associated: SelectorComponent...) -> SelectorComponent {
    return .Selector(name: SelectorNames.all, value: "*", associated: associated)
  }

  public static let all = SelectorComponent.PsuedoSelector(name: SelectorNames.all, value: "*", associated: [])

  public static func active(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.active, value: ":active", associated: associated)
  }

  public static let active = SelectorComponent.PsuedoSelector(name: SelectorNames.active, value: ":active", associated: [])

  public static func after(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.after, value: ":after", associated: associated)
  }

  public static let after = SelectorComponent.PsuedoSelector(name: SelectorNames.after, value: ":after", associated: [])

  public static func before(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.before, value: ":before", associated: associated)
  }

  public static let before = SelectorComponent.PsuedoSelector(name: SelectorNames.before, value: ":before", associated: [])

  public static func checked(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.checked, value: ":checked", associated: associated)
  }

  public static let checked = SelectorComponent.PsuedoSelector(name: SelectorNames.checked, value: ":checked", associated: [])

  public static func diabled(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.disabled, value: ":disabled", associated: associated)
  }

  public static let disabled = SelectorComponent.PsuedoSelector(name: SelectorNames.disabled, value: ":disabled", associated: [])

  public static func empty(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.empty, value: ":empty", associated: associated)
  }

  public static let empty = SelectorComponent.PsuedoSelector(name: SelectorNames.empty, value: ":empty", associated: [])

  public static func firstChild(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.firstChild, value: ":first-child", associated: associated)
  }

  public static let firstChild = SelectorComponent.PsuedoSelector(name: SelectorNames.firstChild, value: ":first-child", associated: [])

  public static func firstLetter(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.firstLetter, value: "::first-letter", associated: associated)
  }

  public static let firstLetter = SelectorComponent.PsuedoSelector(name: SelectorNames.firstLetter, value: "::first-letter", associated: [])

  public static func firstLine(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.firstLine, value: "::first-line", associated: associated)
  }

  public static let firstLine = SelectorComponent.PsuedoSelector(name: SelectorNames.firstLine, value: "::first-line", associated: [])

  public static func firstOfType(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.firstOfType, value: ":first-of-type", associated: associated)
  }

  public static let firstOfType = SelectorComponent.PsuedoSelector(name: SelectorNames.firstOfType, value: ":first-of-type", associated: [])

  public static func focus(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.focus, value: ":focus", associated: associated)
  }

  public static let focus = SelectorComponent.PsuedoSelector(name: SelectorNames.focus, value: ":focus", associated: [])

  public static func hover(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.hover, value: ":hover", associated: associated)
  }

  public static let hover = SelectorComponent.PsuedoSelector(name: SelectorNames.hover, value: ":hover", associated: [])

  public static func inRange(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.inRange, value: ":in-range", associated: associated)
  }

  public static let inRange = SelectorComponent.PsuedoSelector(name: SelectorNames.inRange, value: ":in-range", associated: [])

  public static func lang(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.lang, value: ":lang", associated: associated)
  }

  public static func lastChild(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.lastChild, value: ":last-child", associated: associated)
  }

  public static let lastChild = SelectorComponent.PsuedoSelector(name: SelectorNames.lastChild, value: ":last-child", associated: [])

  public static func lastOfType(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.lastOfType, value: ":last-of-type", associated: associated)
  }

  public static let lastOfType = SelectorComponent.PsuedoSelector(name: SelectorNames.lastOfType, value: ":last-of-type", associated: [])

  public static func not(selector: SelectorStatementConvertible, _ associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.not, value: ":not(\(selector.selectorStatement.stringValue)", associated: associated)
  }

  public enum NthValue {
    case Odd
    case Even
    case Inc(Int, Int)
    case Dec(Int, Int)
    case First(Int)
    case Every(Int)
    case Only(Int)

    var stringValue: String {
      switch self {
        case let .Inc(x, y): return "\(x)n+\(y)"
        case let .Dec(x, y): return "\(x)n-\(y)"
        case let .First(x): return "-n+\(x)"
        case let .Every(x): return "\(x)n"
        case let .Only(x): return String(x)
        case .Odd: return "odd"
        case .Even: return "even"
      }
    }
  }

  public static func nthChild(value: NthValue, _ associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.nthChild, value: ":nth-child(\(value.stringValue)", associated: associated)
  }

  public static func nthLastChild(value: NthValue, _ associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.nthLastChild, value: ":nth-last-child(\(value.stringValue)", associated: associated)
  }

  public static func nthLastOfType(value: NthValue, _ associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.nthLastOfType, value: ":nth-last-of-type(\(value.stringValue)", associated: associated)
  }

  public static func nthOfType(value: NthValue, _ associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.nthOfType, value: ":nth-of-type(\(value.stringValue)", associated: associated)
  }

  public static func onlyChild(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.onlyChild, value: ":only-child", associated: associated)
  }

  public static func optional(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.optional, value: ":optional", associated: associated)
  }

  public static func outOfRange(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.outOfRange, value: ":out-of-range", associated: associated)
  }

  public static func readOnly(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.readOnly, value: ":read-only", associated: associated)
  }

  public static func readWrite(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.readWrite, value: ":read-write", associated: associated)
  }

  public static func required(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.readWrite, value: ":required", associated: associated)
  }

  public static func root(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.root, value: ":root", associated: associated)
  }

  public static func selection(associated: SelectorComponent...) -> SelectorComponent {
    return .PsuedoSelector(name: SelectorNames.selection, value: "::selection", associated: associated)
  }
}

// Selector Operators

internal let child = SelectorComponent.Operator(name: SelectorNames.child, value: ">")
internal let precedingSibling = SelectorComponent.Operator(name: SelectorNames.precedingSibling, value: "+")
internal let followingSibling = SelectorComponent.Operator(name: SelectorNames.followingSibling, value: "~")
internal let and = SelectorComponent.Operator(name: SelectorNames.and, value: ",")

// Operators

infix operator |- {associativity left precedence 100}

public func |-(lhs: SelectorStatementConvertible, rhs: SelectorStatementConvertible) -> SelectorStatement {
  guard !lhs.isEmpty else { return rhs.selectorStatement }
  guard !rhs.isEmpty else { return lhs.selectorStatement }
  return lhs.selectorStatement.append(rhs)
}

infix operator |+ {associativity left precedence 99}

public func |+(lhs: SelectorStatementConvertible, rhs: SelectorStatementConvertible) -> SelectorStatement {
  guard !lhs.isEmpty else { return rhs.selectorStatement }
  guard !rhs.isEmpty else { return lhs.selectorStatement }
  return lhs.selectorStatement.append(precedingSibling, rhs)
}

infix operator |~ {associativity left precedence 98}

public func |~(lhs: SelectorStatementConvertible, rhs: SelectorStatementConvertible) -> SelectorStatement {
  guard !lhs.isEmpty else { return rhs.selectorStatement }
  guard !rhs.isEmpty else { return lhs.selectorStatement }
  return lhs.selectorStatement.append(followingSibling, rhs)
}

infix operator |> {associativity left precedence 97}

public func |>(lhs: SelectorStatementConvertible, rhs: SelectorStatementConvertible) -> SelectorStatement {
  guard !lhs.isEmpty else { return rhs.selectorStatement }
  guard !rhs.isEmpty else { return lhs.selectorStatement }
  return lhs.selectorStatement.append(child, rhs)
}

infix operator |& {associativity left precedence 96}

public func |&(lhs: SelectorStatementConvertible, rhs: SelectorStatementConvertible) -> SelectorStatement {
  guard !lhs.isEmpty else { return rhs.selectorStatement }
  guard !rhs.isEmpty else { return lhs.selectorStatement }
  return lhs.selectorStatement.append(and, rhs)
}
