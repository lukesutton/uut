extension PropertyNames {
  public static let color = "color"
  public static let opacity = "opacity"
}

public func color(value: PropertyValues.Color) -> Property {
  return Property(PropertyNames.color, value)
}

public func color(value: Values.Color) -> Property {
  return Property(PropertyNames.color, PropertyValues.Color.Value(value))
}

public func opacity(value: PropertyValues.Opacity) -> Property {
  return Property(PropertyNames.opacity, value)
}

public func opacity(value: Double) -> Property {
  return Property(PropertyNames.opacity, PropertyValues.Opacity.Value(value))
}
