public struct Style {
  let selector: SelectorStatement
  let properties: [Property]
  let children: [Style]

  init(_ selector: SelectorStatementConvertible, _ properties: Property...) {
    self.selector = selector.selectorStatement
    self.properties = properties
    self.children = []
  }

  init(_ selector: SelectorStatementConvertible, children: [Style], _ properties: Property...) {
    self.selector = selector.selectorStatement
    self.properties = properties
    self.children = []
  }

  var stringValue: String {
    let selectorString = self.selector.stringValue
    let propertyStrings = self.properties.map {$0.stringValue}.joinWithSeparator(" ")

    return [selectorString, "{", propertyStrings, "}"].joinWithSeparator(" ")
  }
}
