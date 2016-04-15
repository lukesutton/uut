public struct Property {
  public let label: String
  public let value: PropertyValue

  init(_ label: String, _ value: PropertyValue) {
    self.label = label
    self.value = value
  }
}
