extension Properties {
  public struct Custom: Property, StyleComponent {
    public let label: String
    public let value: String
    public let stringValue: String

    public init(_ label: String, _ value: String) {
      self.label = label
      self.value = value
      self.stringValue = value
    }

  }
}
