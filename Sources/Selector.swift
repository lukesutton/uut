public enum Selector {
  case bare(Component)
  indirect case or(Selector, Selector)
  indirect case and(Selector, Selector)
  indirect case child(Selector, Selector)
  indirect case descendent(Selector, Selector)
  indirect case immediatelyAfter(Selector, Selector)
  indirect case precededBy(Selector, Selector)

  public enum Component {
    case all
    case el(HTMLElement)
    case id(String)
    case className(String)
    case attr(String, HTMLAttribute)

    var stringValue: String {
      switch self {
        case .all: return "*"
        case let .el(el): return el.stringValue
        case let .id(id): return "#\(id)"
        case let .className(name): return ".\(name)"
        case let .attr(name, opt): return "[\(name)\(opt.stringValue)]"
      }
    }
  }

  static var all: Selector {
    return .bare(.all)
  }

  static func el(_ value: HTMLElement) -> Selector {
    return .bare(.el(value))
  }

  public static func id(_ value: String) -> Selector {
    return .bare(.id(value))
  }

  static func className(_ value: String) -> Selector {
    return .bare(.className(value))
  }

  static func attr(_ name: String, _ opt: HTMLAttribute) -> Selector {
    return .bare(.attr(name, opt))
  }

  var stringValue: String {
    switch self {
      case let .bare(sel): return sel.stringValue
      case let .or(lhs, rhs): return "\(lhs.stringValue), \(rhs.stringValue)"
      case let .and(lhs, rhs): return "\(lhs.stringValue)\(rhs.stringValue)"
      case let .child(lhs, rhs): return "\(lhs.stringValue) > \(rhs.stringValue)"
      case let .descendent(lhs, rhs): return "\(lhs.stringValue) \(rhs.stringValue)"
      case let .immediatelyAfter(lhs, rhs): return "\(lhs.stringValue) + \(rhs.stringValue)"
      case let .precededBy(lhs, rhs): return "\(lhs.stringValue) ~ \(rhs.stringValue)"
    }
  }
}

public func && (lhs: Selector, rhs: Selector) -> Selector {
  return .and(lhs, rhs)
}

public func || (lhs: Selector, rhs: Selector) -> Selector {
  return .or(lhs, rhs)
}

// TODO: For these operators, make sure it prefixes both sides of an .or case
public func > (lhs: Selector, rhs: Selector) -> Selector {
  return .child(lhs, rhs)
}

infix operator *>: AdditionPrecedence
public func *> (lhs: Selector, rhs: Selector) -> Selector {
  return .descendent(lhs, rhs)
}

public func + (lhs: Selector, rhs: Selector) -> Selector {
  return .immediatelyAfter(lhs, rhs)
}

infix operator ~: AdditionPrecedence
public func ~ (lhs: Selector, rhs: Selector) -> Selector {
  return .precededBy(lhs, rhs)
}
