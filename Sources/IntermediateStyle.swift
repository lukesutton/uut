// A version of the style without children or fancy initialization
public struct IntermediateStyle {
  public let selector: SelectorStatement
  public let properties: [IntermediateProperty]

  public init(selector: SelectorStatement, properties: [IntermediateProperty]) {
    self.selector = selector
    self.properties = properties
  }
}
