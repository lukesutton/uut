extension Properties {
  public struct BoxShadow: Property, SimpleProperty, StyleComponent {

    public let label = "box-shadow"
    public let value: String

    public init(_ values: PropertyValues.Shadow...) {
      self.value = values.map {$0.stringValue}.joinWithSeparator(", ")
    }
  }
}
