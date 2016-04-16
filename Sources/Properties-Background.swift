extension PropertyNames {
  public static let backgroundAttachment = "backgroundAttachment"
  public static let backgroundBlendMode = "background-blend-mode"
  public static let backgroundColor = "background-color"
  public static let backgroundImage = "background-image"
  public static let backgroundPosition = "background-position"
  public static let backgroundRepeat = "background-repeat"
  public static let backgroundClip = "background-clip"
  public static let backgroundOrigin = "background-origin"
  public static let backgroundSize = "background-size"
}

public func backgroundAttachment(value: PropertyValues.BackgroundAttachment) -> Property {
  return Property(PropertyNames.backgroundAttachment, value)
}

public func backgroundBlendMode(value: PropertyValues.BackgroundBlendMode) -> Property {
  return Property(PropertyNames.backgroundBlendMode, value)
}

public func backgroundColor(value: PropertyValues.Color) -> Property {
  return Property(PropertyNames.backgroundColor, value)
}

public func backgroundColor(value: Values.Color) -> Property {
  return Property(PropertyNames.backgroundColor, PropertyValues.Color.Value(value))
}

public func backgroundImage(value: PropertyValues.URL) -> Property {
  return Property(PropertyNames.backgroundImage, value)
}

public func backgroundImage(value: String) -> Property {
  return Property(PropertyNames.backgroundImage, PropertyValues.URL.URL(value))
}

public func backgroundPosition(value: PropertyValues.BackgroundPosition) -> Property {
  return Property(PropertyNames.backgroundPosition, value)
}

public func backgroundRepeat(value: PropertyValues.BackgroundRepeat) -> Property {
  return Property(PropertyNames.backgroundRepeat, value)
}

public func backgroundClip(value: PropertyValues.Box) -> Property {
  return Property(PropertyNames.backgroundClip, value)
}

public func backgroundOrigin(value: PropertyValues.Box) -> Property {
  return Property(PropertyNames.backgroundOrigin, value)
}

public func backgroundSize(value: PropertyValues.BackgroundSize) -> Property {
  return Property(PropertyNames.backgroundSize, value)
}
