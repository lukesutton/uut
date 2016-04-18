// A version of the style without children or fancy initialization
public struct IntermediateStyle {
  public typealias PropertyUpdate = (IntermediateProperty -> (String, String)?)

  public let selector: SelectorStatement
  public let properties: [IntermediateProperty]
  public let query: MediaQueryStatement?

  public init(selector: SelectorStatement, properties: [Property], query: MediaQueryStatement? = nil) {
    self.selector = selector
    self.properties = properties.map {IntermediateProperty(original: $0)}
    self.query = query
  }

  public init(selector: SelectorStatement, properties: [IntermediateProperty], query: MediaQueryStatement? = nil) {
    self.selector = selector
    self.properties = properties
    self.query = query
  }

  public func prefixSelector(selector: SelectorStatementConvertible) -> IntermediateStyle {
    return IntermediateStyle(selector: selector.selectorStatement.append(self.selector), properties: self.properties, query: self.query)
  }

  public func suffixSelector(selector: SelectorStatementConvertible) -> IntermediateStyle {
    return IntermediateStyle(selector: self.selector.append(selector.selectorStatement), properties: self.properties, query: self.query)
  }

  public func replaceSelector(selector: SelectorStatementConvertible) -> IntermediateStyle {
    return IntermediateStyle(selector: selector.selectorStatement, properties: self.properties, query: self.query)
  }

  public func removeProperty(property: Property.Type) -> IntermediateStyle {
    let updates = self.properties.filter {$0.original.dynamicType != property}
    return IntermediateStyle(selector: self.selector, properties: updates, query: self.query)
  }

  public func replaceProperty(property: Property.Type, with replacement: Property) -> IntermediateStyle {
    let updates: [IntermediateProperty] = self.properties.map { prop in
      if prop.original.dynamicType == property {
        return IntermediateProperty(original: replacement)
      }
      else {
        return prop
      }
    }
    return IntermediateStyle(selector: self.selector, properties: updates, query: self.query)
  }

  public func addValueForProperty(property: Property.Type, _ f: PropertyUpdate) -> IntermediateStyle {
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

    return IntermediateStyle(selector: self.selector, properties: updates, query: self.query)
  }
}
