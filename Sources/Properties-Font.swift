extension PropertyNames {
  public static let font = "font"
  public static let fontFamily = "font-family"
  public static let fontSize = "font-size"
  public static let fontStyle = "font-style"
  public static let fontVariant = "font-variant"
  public static let fontWeight = "font-weight"
}

public func font(value: PropertyValues.Font) -> Property {
  return Property(PropertyNames.font, value)
}

public func fontFamily(value: PropertyValues.FontFamily) -> Property {
  return Property(PropertyNames.fontFamily, value)
}

public func fontSize(value: PropertyValues.FontSize) -> Property {
  return Property(PropertyNames.fontSize, value)
}

public func fontSize(value: Measurement) -> Property {
  return Property(PropertyNames.fontSize, PropertyValues.FontSize.Value(value))
}

public func fontStyle(value: PropertyValues.FontStyle) -> Property {
  return Property(PropertyNames.fontStyle, value)
}

public func fontVariant(value: PropertyValues.FontVariant) -> Property {
  return Property(PropertyNames.fontVariant, value)
}

public func fontWeight(value: PropertyValues.FontWeight) -> Property {
  return Property(PropertyNames.fontWeight, value)
}
