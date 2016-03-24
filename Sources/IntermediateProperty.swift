public struct IntermediateProperty {
  public let original: Property
  public let values: [(String, String)]

  public func add(label: String, withValue value: String) -> IntermediateProperty {
    return IntermediateProperty(original: self.original, values: self.values + [(label, value)])
  }

  public func add(labelAndValue: (String, String)) -> IntermediateProperty {
    return IntermediateProperty(original: self.original, values: self.values + [labelAndValue])
  }
}
