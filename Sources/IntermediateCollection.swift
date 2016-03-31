public struct IntermediateCollection {
  public typealias PropertyUpdate = (IntermediateProperty -> (String, String)?)
  public typealias StyleUpdate = (IntermediateStyle -> IntermediateStyle)

  let styles: [IntermediateStyle]

  public init(_ styles: [IntermediateStyle]) {
    self.styles = styles
  }

  public func transformMatches(query: StylesQuery, update: StyleUpdate) -> IntermediateCollection {
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

  public func replaceMatches(query: StylesQuery, update: (IntermediateStyle -> Style)) -> IntermediateCollection {
    let updates: [IntermediateStyle] = self.styles.map { style in
      if self.matches(style, withQuery: query) {
        let newStyle = update(style)
        return IntermediateStyle(
          selector: newStyle.selector,
          properties: newStyle.properties.map {IntermediateProperty(original: $0)}
        )
      }
      else {
        return style
      }
    }

    return IntermediateCollection(updates)
  }

  public func removeMatches(query: StylesQuery) -> IntermediateCollection {
    let updates: [IntermediateStyle] = self.styles.filter { style in
      return !matches(style, withQuery: query)
    }

    return IntermediateCollection(updates)
  }

  public func keepMatches(query: StylesQuery) -> IntermediateCollection {
    let updates: [IntermediateStyle] = self.styles.filter { style in
      return matches(style, withQuery: query)
    }

    return IntermediateCollection(updates)
  }

  private func matches(style: IntermediateStyle, withQuery query: StylesQuery) -> Bool {
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
