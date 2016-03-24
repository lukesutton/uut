// A version of the style without children or fancy initialization
public struct IntermediateStyle {
  public typealias PropertyUpdate = (IntermediateProperty -> (String, String)?)

  public let selector: SelectorStatement
  public let properties: [IntermediateProperty]

  public init(selector: SelectorStatement, properties: [IntermediateProperty]) {
    self.selector = selector
    self.properties = properties
  }

  // Initial dumb version. It will do a bunch of redundant work for each
  // style, but it's at least simple.
  public func addPropertyValue(property: Property.Type, _ f: PropertyUpdate) -> IntermediateStyle {
    let updates: [IntermediateProperty] = self.properties.map { prop in
      if prop.original.dynamicType == property {
        if let update = f(prop) {
          return prop.add(update)
        }
        else {
          return prop
        }
      }
      else {
        return prop
      }
    }

    return IntermediateStyle(selector: self.selector, properties: updates)
  }
}
