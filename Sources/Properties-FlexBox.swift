extension PropertyNames {
  public static let alignContent = "align-content"
  public static let alignItems = "align-items"
  public static let alignSelf = "align-self"
  public static let flex = "flex"
  public static let flexBasis = "flex-basis"
  public static let flexDirection = "flex-direction"
  public static let flexFlow = "flex-flow"
  public static let flexGrow = "flex-grow"
  public static let flexShrink = "flex-shrink"
  public static let flexWrap = "flex-wrap"
  public static let justifyContent = "justify-content"
  public static let order = "order"
}

public func alignContent(value: PropertyValues.AlignContent) -> Property {
  return Property(PropertyNames.alignContent, value)
}

public func alignItems(value: PropertyValues.AlignItems) -> Property {
  return Property(PropertyNames.alignItems, value)
}

public func alignSelf(value: PropertyValues.AlignSelf) -> Property {
  return Property(PropertyNames.alignSelf, value)
}

public func flex(value: PropertyValues.Flex) -> Property {
  return Property(PropertyNames.flex, value)
}

public func flexBasis(value: PropertyValues.NumberWithAuto) -> Property {
  return Property(PropertyNames.flexBasis, value)
}

public func flexBasis(value: Int) -> Property {
  return Property(PropertyNames.flexBasis, PropertyValues.NumberWithAuto.Value(value))
}

public func flexDirection(value: PropertyValues.FlexDirection) -> Property {
  return Property(PropertyNames.flexDirection, value)
}

public func flexFlow(value: PropertyValues.Number) -> Property {
  return Property(PropertyNames.flexFlow, value)
}

public func flexGrow(value: PropertyValues.Number) -> Property {
  return Property(PropertyNames.flexGrow, value)
}

public func flexGrow(value: Int) -> Property {
  return Property(PropertyNames.flexGrow, PropertyValues.Number.Value(value))
}

public func flexShrink(value: PropertyValues.Number) -> Property {
  return Property(PropertyNames.flexShrink, value)
}

public func flexShrink(value: Int) -> Property {
  return Property(PropertyNames.flexShrink, PropertyValues.Number.Value(value))
}

public func flexWrap(value: PropertyValues.FlexWrap) -> Property {
  return Property(PropertyNames.flexWrap, value)
}

public func justifyContent(value: PropertyValues.JustifyContent) -> Property {
  return Property(PropertyNames.justifyContent, value)
}

public func order(value: PropertyValues.Number) -> Property {
  return Property(PropertyNames.order, value)
}

public func order(value: Int) -> Property {
  return Property(PropertyNames.order, PropertyValues.Number.Value(value))
}
