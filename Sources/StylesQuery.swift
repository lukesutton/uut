public struct StylesQuery {
  enum Mode {
    case All
    case Property
    case Selector
    case PropertyAndSelector
  }

  enum SelectorMode {
    case Match
    case Prefix
    case Suffix
    case None
  }

  let property: String?
  let selector: SelectorStatement?
  let selectorMode: SelectorMode
  let mode: Mode

  public init() {
    self.property = nil
    self.selector = nil
    self.selectorMode = .None
    self.mode = .All
  }

  private init(property: String?, selector: SelectorStatementConvertible?, mode: SelectorMode) {
    self.property = property
    self.selector = selector?.selectorStatement
    self.selectorMode = mode

    if property != nil && selector != nil {
      self.mode = .PropertyAndSelector
    }
    else if property != nil {
      self.mode = .Property
    }
    else if selector != nil {
      self.mode = .Selector
    }
    else {
      self.mode = .All
    }
  }

  public static func all() -> StylesQuery {
    return StylesQuery()
  }

  public static func hasProperty(property: String) -> StylesQuery {
    return StylesQuery().hasProperty(property)
  }

  public static func hasSelector(match selector: SelectorStatementConvertible) -> StylesQuery {
    return StylesQuery().hasSelector(match: selector)
  }

  public static func hasSelector(prefix selector: SelectorStatementConvertible) -> StylesQuery {
    return StylesQuery().hasSelector(prefix: selector)
  }

  public static func hasSelector(suffix selector: SelectorStatementConvertible) -> StylesQuery {
    return StylesQuery().hasSelector(suffix: selector)
  }

  public func hasProperty(property: String) -> StylesQuery {
    return StylesQuery(property: property, selector: self.selector, mode: self.selectorMode)
  }

  public func hasSelector(match selector: SelectorStatementConvertible) -> StylesQuery {
    return StylesQuery(property: self.property, selector: selector, mode: .Match)
  }

  public func hasSelector(prefix selector: SelectorStatementConvertible) -> StylesQuery {
    return StylesQuery(property: self.property, selector: selector, mode: .Prefix)
  }

  public func hasSelector(suffix selector: SelectorStatementConvertible) -> StylesQuery {
    return StylesQuery(property: self.property, selector: selector, mode: .Suffix)
  }
}
