public struct Style: StyleComponent {
  let queries: [MediaQueryStatement]
  let selector: SelectorStatement
  let properties: [Property]
  let children: [Style]
  let mixins: [Mixin]
  let extensions: [StyleExtension]

  public init(_ selector: SelectorStatementConvertible, queries: [MediaQueryStatement] = [], mixins: [Mixin] = [], extensions: [StyleExtension] =  [], children: [Style] = [], properties: [Property] = []) {
    self.selector = selector.selectorStatement
    self.queries = queries
    self.children = children
    self.mixins = mixins
    self.extensions = extensions
    self.properties = properties
  }

  func prependSelector(selector: SelectorStatement) -> Style {
    return Style(selector |+ self.selector, children: self.children, properties: self.properties, mixins: self.mixins, extensions: self.extensions)
  }
}
