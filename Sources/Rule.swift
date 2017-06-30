public struct Rule {
  enum Relationship {
    case none
    case refines(Selector)
    case child(Selector)
    case descendent(Selector)
  }

  let description: String?
  let selector: Selector
  let relationship: Relationship
  let properties: [Property]
}

extension Rule {
  public init(description: String? = nil, selector: Selector, properties: [Property], mixins: [Mixin]? = nil) {
    self.description = description
    self.selector = selector
    self.relationship = .none
    self.properties = merge(mixins: mixins, into: properties)
  }

  public init(description: String? = nil, refines rule: Rule, selector: Selector, properties: [Property], mixins: [Mixin]? = nil) {
    self.description = description
    self.selector = rule.selector && selector
    self.relationship = .refines(rule.selector)
    self.properties = merge(mixins: mixins, into: properties)
  }

  public init(description: String? = nil, childOf rule: Rule, selector: Selector, properties:  [Property], mixins: [Mixin]? = nil) {
    self.description = description
    self.selector = rule.selector > selector
    self.relationship = .child(rule.selector)
    self.properties = merge(mixins: mixins, into: properties)
  }


  public init(description: String? = nil, descendentOf rule: Rule, selector: Selector, properties:  [Property], mixins: [Mixin]? = nil) {
    self.description = description
    self.selector = rule.selector *> selector
    self.relationship = .descendent(rule.selector)
    self.properties = merge(mixins: mixins, into: properties)
  }

  public func render(pretty: Bool = true) -> String {
    let propertyStrings = properties.map { "\($0.definition.label): \($0.value.stringValue);"}
    if pretty {
      return """
             \(selector.stringValue) {
               \(propertyStrings.joined(separator: "\r\n  "))
             }
             """
    }
    else {
      return "\(selector.stringValue) {\(propertyStrings.joined())}"
    }
  }
}
