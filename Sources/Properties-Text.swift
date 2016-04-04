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

  public struct TextAlign: Property, StyleComponent {
    public let label = "text-align"
    public let value: PropertyValues.TextAlign
    public let stringValue: String

    public init(_ value: PropertyValues.TextAlign) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct TextIndent: Property, StyleComponent {
    public let label = "text-indent"
    public let value: PropertyValues.Number
    public let stringValue: String

    public init(_ value: PropertyValues.Number) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct TextTransform: Property, StyleComponent {
    public let label = "text-transform"
    public let value: PropertyValues.TextTransform
    public let stringValue: String

    public init(_ value: PropertyValues.TextTransform) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct WhiteSpace: Property, StyleComponent {
    public let label = "white-space"
    public let value: PropertyValues.WhiteSpace
    public let stringValue: String

    public init(_ value: PropertyValues.WhiteSpace) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct WordBreak: Property, StyleComponent {
    public let label = "word-break"
    public let value: PropertyValues.WordBreak
    public let stringValue: String

    public init(_ value: PropertyValues.WordBreak) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct WordSpacing: Property, StyleComponent {
    public let label = "word-spacing"
    public let value: PropertyValues.UnitWithNormal
    public let stringValue: String

    public init(_ value: PropertyValues.UnitWithNormal) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct WordWrap: Property, StyleComponent {
    public let label = "word-wrap"
    public let value: PropertyValues.WordWrap
    public let stringValue: String

    public init(_ value: PropertyValues.WordWrap) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct TextDecoration: Property, StyleComponent {
    public let label = "text-decoration"
    public let value: PropertyValues.TextDecoration
    public let stringValue: String

    public init(_ value: PropertyValues.TextDecoration) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct TextShadow: Property, StyleComponent {
    public let label = "text-shadow"
    public let values: [PropertyValues.Shadow]
    public let stringValue: String

    public init(_ values: PropertyValues.Shadow...) {
      self.values = values
      self.stringValue = values.map {$0.stringValue}.joinWithSeparator(", ")
    }
  }
}
