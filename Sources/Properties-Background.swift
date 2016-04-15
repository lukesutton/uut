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

func backgroundAttachment(value: PropertyValues.BackgroundAttachment) -> Property {
  return Property(PropertyNames.backgroundAttachment, value)
}

func backgroundBlendMode(value: PropertyValues.BackgroundBlendMode) -> Property {
  return Property(PropertyNames.backgroundBlendMode, value)
}

func backgroundColor(value: PropertyValues.Color) -> Property {
  return Property(PropertyNames.backgroundColor, value)
}

func backgroundColor(value: Values.Color) -> Property {
  return Property(PropertyNames.backgroundColor, PropertyValues.Color.Value(value))
}

func backgroundImage(value: PropertyValues.URL) -> Property {
  return Property(PropertyNames.backgroundImage, value)
}

func backgroundImage(value: String) -> Property {
  return Property(PropertyNames.backgroundImage, PropertyValues.URL.URL(value))
}

func backgroundPosition(value: PropertyValues.BackgroundPosition) -> Property {
  return Property(PropertyNames.backgroundPosition, value)
}

func backgroundRepeat(value: PropertyValues.BackgroundRepeat) -> Property {
  return Property(PropertyNames.backgroundRepeat, value)
}

func backgroundClip(value: PropertyValues.Box) -> Property {
  return Property(PropertyNames.backgroundClip, value)
}

func backgroundOrigin(value: PropertyValues.Box) -> Property {
  return Property(PropertyNames.backgroundOrigin, value)
}

func backgroundSize(value: PropertyValues.BackgroundSize) -> Property {
  return Property(PropertyNames.backgroundSize, value)
}
