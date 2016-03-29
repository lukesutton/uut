extension Properties {
  public struct BoxShadow: Property, StyleComponent {

    public let label = "box-shadow"
    public let values: [PropertyValues.Shadow]
    public let stringValue: String

    public init(_ values: PropertyValues.Shadow...) {
      self.values = values
      self.stringValue = values.map {$0.stringValue}.joinWithSeparator(", ")
    }
  }
}
