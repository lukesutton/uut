public struct IntermediateCollection {
  public typealias PropertyUpdate = (IntermediateProperty -> (String, String)?)
  public typealias StyleUpdate = (IntermediateStyle -> IntermediateStyle)

  let styles: [IntermediateStyle]

  public init(_ styles: [IntermediateStyle]) {
    self.styles = styles
  }

  public func forMatch(query: StylesQuery, update: StyleUpdate) -> IntermediateCollection {
    let updates: [IntermediateStyle] = self.styles.map { style in
      if self.matches(style, withQuery: query) {
        return update(style)
      }
      else {
        return style
      }
    }

    return IntermediateCollection(updates)
  }

  public func matches(style: IntermediateStyle, withQuery query: StylesQuery) -> Bool {
    switch query.mode {
      case .All:
        return true
      case .Property:
        return self.matchesProperty(style, withQuery: query)
      case .Selector:
        return self.matchesSelector(style, withQuery: query)
      case .PropertyAndSelector:
        return self.matchesProperty(style, withQuery: query) && self.matchesSelector(style, withQuery: query)
    }
  }

  private func matchesProperty(style: IntermediateStyle, withQuery query: StylesQuery) -> Bool {
    if let property = query.property {
      let matches = style.properties.filter {$0.original.dynamicType == property}
      return !matches.isEmpty
    }
    else {
      return false
    }
  }

  private func matchesSelector(style: IntermediateStyle, withQuery query: StylesQuery) -> Bool {
    if let selector = query.selector {
      switch query.selectorMode {
        case .Match:
          return style.selector.selectors == selector.selectors
        case .Prefix:
          return style.selector.selectors.startsWith(selector.selectors)
        case .Suffix:
          // It seems there is no .endsWith(_:) method, so we do this nastiness
          return style.selector.selectors.reverse().startsWith(selector.selectors.reverse())
        case .None:
          return false
      }
    }
    else {
      return false
    }
  }
}
