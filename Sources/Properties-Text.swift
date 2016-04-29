extension PropertyNames {
  public static let hangingPunctuation = "hanging-punctuation"
  public static let letterSpacing = "letter-spacing"
  public static let lineHeight = "line-height"
  public static let textAlign = "text-align"
  public static let textIndent = "text-indent"
  public static let textTransform = "text-transform"
  public static let whiteSpace = "white-space"
  public static let wordBreak = "word-break"
  public static let wordSpacing = "word-spacing"
  public static let wordWrap = "word-wrap"
  public static let textDecoration = "text-decoration"
  public static let textShadown = "text-shadow"
}

public func hangingPunctuation(value: PropertyValues.HangingPunctuation) -> Property {
  return Property(PropertyNames.hangingPunctuation, value)
}

public func letterSpacing(value: PropertyValues.LetterSpacing) -> Property {
  return Property(PropertyNames.letterSpacing, value)
}

public func letterSpacing(value: Measurement) -> Property {
  return Property(PropertyNames.letterSpacing, PropertyValues.LetterSpacing.Value(value))
}

public func lineHeight(value: PropertyValues.LineHeight) -> Property {
  return Property(PropertyNames.lineHeight, value)
}

public func lineHeight(value: Measurement) -> Property {
  return Property(PropertyNames.lineHeight, PropertyValues.LineHeight.Value(value))
}

public func lineHeight(value: Double) -> Property {
  return Property(PropertyNames.lineHeight, PropertyValues.LineHeight.Number(value))
}

public func textAlign(value: PropertyValues.TextAlign) -> Property {
  return Property(PropertyNames.textAlign, value)
}

public func textIndent(value: PropertyValues.Number) -> Property {
  return Property(PropertyNames.textAlign, value)
}

public func textIndent(value: Int) -> Property {
  return Property(PropertyNames.textAlign, PropertyValues.Number.Value(value))
}

public func textTransform(value: PropertyValues.TextTransform) -> Property {
  return Property(PropertyNames.textTransform, value)
}

public func whiteSpace(value: PropertyValues.WhiteSpace) -> Property {
  return Property(PropertyNames.whiteSpace, value)
}

public func wordSpacing(value: PropertyValues.MeasurementWithNormal) -> Property {
  return Property(PropertyNames.wordSpacing, value)
}

public func wordSpacing(value: Measurement) -> Property {
  return Property(PropertyNames.wordSpacing, PropertyValues.MeasurementWithNormal.Value(value))
}

public func wordWrap(value: PropertyValues.WordWrap) -> Property {
  return Property(PropertyNames.wordWrap, value)
}

public func textDecoration(value: PropertyValues.TextDecoration) -> Property {
  return Property(PropertyNames.textDecoration, value)
}

public func textShadown(values: PropertyValues.Shadow...) -> Property {
  return Property(PropertyNames.textShadown, PropertyValues.ShadowCollection(values))
}
