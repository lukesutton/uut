public struct StylePackage {
  let selector: SelectorStatement?
  let styles: [Style]

  public init(selector: SelectorStatementConvertible, _ styles: [Style]) {
    self.selector = selector.selectorStatement
    self.styles = styles
  }

  public init(selector: SelectorStatementConvertible, _ styles: Style...) {
    let statement = selector.selectorStatement
    self.selector = statement
    self.styles = styles.map {$0.prependSelector(statement)}
  }

  public init(_ styles: [Style]) {
    self.selector = nil
    self.styles = styles
  }

  public init(_ styles: Style...) {
    self.selector = nil
    self.styles = styles
  }

  public func render() -> String {
    let output = styles.map {$0.stringValue}
    return output.joinWithSeparator(" ")
  }
}
