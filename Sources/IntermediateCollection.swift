public struct IntermediateCollection {
  public typealias PropertyUpdate = (IntermediateProperty -> (String, String)?)
  public typealias StyleUpdate = (IntermediateStyle -> IntermediateStyle)

  let styles: [IntermediateStyle]

  public init(_ styles: [Style]) {
    self.styles = styles.map {IntermediateStyle(style: $0)}
  }

  public init(_ styles: [IntermediateStyle]) {
    self.styles = styles
  }

  public var count: Int {
    return styles.count
  }

  public subscript(index: Int) -> IntermediateStyle? {
    return styles[index]
  }

  public func addStyle(style: Style, after query: StylesQuery? = nil) -> IntermediateCollection {
    let intermediate = IntermediateStyle(selector: style.selector, properties: style.properties)
    if let query = query {
      let updates: [IntermediateStyle] = self.styles.reduce([]) { memo, style in
        if matches(style, withQuery: query) {
          return memo + [style, intermediate]
        }
        else {
          return memo + [style]
        }
      }

      return IntermediateCollection(updates)
    }
    else {
      return IntermediateCollection(self.styles + [intermediate])
    }
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
          properties: newStyle.properties
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
      let matches = style.properties.filter {$0.original.label == property}
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
          return style.selector.components == selector.components
        case .Prefix:
          return style.selector.components.startsWith(selector.components)
        case .Suffix:
          // It seems there is no .endsWith(_:) method, so we do this nastiness
          return style.selector.components.reverse().startsWith(selector.components.reverse())
        case .None:
          return false
      }
    }
    else {
      return false
    }
  }
}
