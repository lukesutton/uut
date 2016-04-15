extension PropertyNames {
  public static let counterIncrement = "counter-increment"
  public static let counterReset = "counter-reset"
  public static let listStyle = "list-style"
  public static let listStyleImage = "list-style-image"
  public static let listStylePosition = "list-style-position"
  public static let listStyleType = "list-style-type"
}

public func counterIncrement(value: PropertyValues.NumberWithNone) -> Property {
  return Property(PropertyNames.counterIncrement, value)
}

public func counterIncrement(value: Int) -> Property {
  return Property(PropertyNames.counterIncrement, PropertyValues.NumberWithNone.Value(value))
}

public func counterReset(value: PropertyValues.CounterReset) -> Property {
  return Property(PropertyNames.counterReset, value)
}

public func counterReset(value: Int) -> Property {
  return Property(PropertyNames.counterIncrement, PropertyValues.CounterReset.Number(value))
}

public func counterReset(value: String) -> Property {
  return Property(PropertyNames.counterIncrement, PropertyValues.CounterReset.Name(value))
}

public func listStyle(value: PropertyValues.ListStyle) -> Property {
  return Property(PropertyNames.listStyle, value)
}

public func listStyle(style: PropertyValues.ListStyleType = .Disc, position: PropertyValues.ListStylePosition = .Outside, image: PropertyValues.URL = .None) -> Property {
  return Property(PropertyNames.listStyle, PropertyValues.ListStyle.Config(style, position, image))
}

public func listStyleImage(value: PropertyValues.URL) -> Property {
  return Property(PropertyNames.listStyleImage, value)
}

public func listStyleImage(value: String) -> Property {
  return Property(PropertyNames.listStyleImage, PropertyValues.URL.URL(value))
}

public func listStylePosition(value: PropertyValues.ListStylePosition) -> Property {
  return Property(PropertyNames.listStylePosition, value)
}

public func listStyleType(value: PropertyValues.ListStyleType) -> Property {
  return Property(PropertyNames.listStyleType, value)
}
