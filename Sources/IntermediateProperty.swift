public struct IntermediateProperty {
  public let original: Property
  public let additionalValues: [(String, String)]

  public init(original: Property) {
    self.original = original
    self.additionalValues = []
  }

  public init(original: Property, additionalValues: [(String, String)]) {
    self.original = original
    self.additionalValues = additionalValues
  }

  public func add(label: String, withValue value: String) -> IntermediateProperty {
    return IntermediateProperty(original: self.original, additionalValues: self.additionalValues + [(label, value)])
  }

  public func add(labelAndValue: (String, String)) -> IntermediateProperty {
    return IntermediateProperty(original: self.original, additionalValues: self.additionalValues + [labelAndValue])
  }

  public var originalValue: (String, String) {
    return (self.original.label, self.original.value)
  }

  var allValues: [(String, String)] {
    return [self.originalValue] + self.additionalValues
  }
}
