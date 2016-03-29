public struct IntermediateProperty {
  public let original: Property
  public let values: [(String, String)]

  public init(original: Property) {
    self.original = original
    self.values = []
  }

  public init(original: Property, values: [(String, String)]) {
    self.original = original
    self.values = values
  }

  public func add(label: String, withValue value: String) -> IntermediateProperty {
    return IntermediateProperty(original: self.original, values: self.values + [(label, value)])
  }

  public func add(labelAndValue: (String, String)) -> IntermediateProperty {
    return IntermediateProperty(original: self.original, values: self.values + [labelAndValue])
  }

  var allValues: [(String, String)] {
    return [(self.original.label, self.original.value)] + self.values
  }
}
