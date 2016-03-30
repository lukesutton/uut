public struct StylePackage {
  let selector: SelectorStatement?
  let name: String
  let styles: [Style]

  public init(name: String, selector: SelectorStatementConvertible, styles: [Style]) {
    self.name = name
    let statement = selector.selectorStatement
    self.selector = statement
    self.styles = styles.map {$0.prependSelector(statement)}
  }

  public init(name: String, selector: SelectorStatementConvertible, styles: Style...) {
    self.name = name
    let statement = selector.selectorStatement
    self.selector = statement
    self.styles = styles.map {$0.prependSelector(statement)}
  }

  public init(name: String, styles: [Style]) {
    self.name = name
    self.selector = nil
    self.styles = styles
  }

  public init(name: String, styles: Style...) {
    self.name = name
    self.selector = nil
    self.styles = styles
  }
}
