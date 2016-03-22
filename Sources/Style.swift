public struct Style: StyleComponent {
  let selector: SelectorStatement
  let properties: [Property]
  let children: [Style]

  public init(_ selector: SelectorStatementConvertible, _ components: StyleComponent...) {
    let statement = selector.selectorStatement
    self.selector = statement

    let components = extractComponents(components)
    self.properties = components.properties
    self.children = components.children.map {$0.prependSelector(statement)}
  }

  public init(_ selector: SelectorStatementConvertible, children: [Style], properties: [Property]) {
    self.selector = selector.selectorStatement
    self.children = children
    self.properties = properties
  }

  public var stringValue: String {
    let selectorString = self.selector.stringValue
    let propertyStrings = self.properties.map {$0.stringValue}.joinWithSeparator(" ")
    let childStrings = self.children.map {$0.stringValue}.joinWithSeparator(" ")

    if childStrings.isEmpty {
      return [selectorString, "{", propertyStrings, "}"].joinWithSeparator(" ")
    }
    else {
      return [selectorString, "{", propertyStrings, "}", childStrings].joinWithSeparator(" ")
    }

  }

  func prependSelector(selector: SelectorStatement) -> Style {
    return Style(selector |+ self.selector, children: self.children, properties: self.properties)
  }
}

private func extractComponents(components: [StyleComponent]) -> (children: [Style], properties: [Property]) {
    // This should actually be done differently, since they should be processed
  // in order.
  let properties = components.filter {$0 is Property}.map {$0 as! Property}
  let children = components.filter {$0 is Style}.map {$0 as! Style}

  // if !mixins.isEmpty {
  //   let moreprops = mixins.reduce(properties) {$0 + $1.properties}
  //   let morechildren = mixins.reduce(children) {$0 + $1.children}
  //   return (properties: moreprops, children: morechildren, extensions: extensions)
  // }
  // else {
    return (properties: properties, children: children)
  // }
}
