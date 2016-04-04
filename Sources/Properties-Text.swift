extension Properties {
  public struct HangingPunctuation: Property, StyleComponent {
    public let label = "hanging-punctuation"
    public let value: PropertyValues.HangingPunctuation
    public let stringValue: String

    public init(_ value: PropertyValues.HangingPunctuation) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct LetterSpacing: Property, StyleComponent {
    public let label = "letter-spacing"
    public let value: PropertyValues.LetterSpacing
    public let stringValue: String

    public init(_ value: PropertyValues.LetterSpacing) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct LineHeight: Property, StyleComponent {
    public let label = "line-height"
    public let value: PropertyValues.LineHeight
    public let stringValue: String

    public init(_ value: PropertyValues.LineHeight) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }
}
