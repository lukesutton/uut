extension PropertyNames {
  public static let borderCollapse = "border-collapse"
  public static let borderSpacing = "border-spacing"
  public static let captionSide = "caption-side"
  public static let emptyCells = "empty-cells"
  public static let tableLayout = "empty-cells"
}

public func borderCollapse(value: PropertyValues.BorderCollapse) -> Property {
  return Property(PropertyNames.borderCollapse, value)
}

public func borderSpacing(value: PropertyValues.BorderSpacing) -> Property {
  return Property(PropertyNames.borderSpacing, value)
}

public func borderSpacing(x: Measurement, _ y: Measurement) -> Property {
  return Property(PropertyNames.borderSpacing, PropertyValues.BorderSpacing.Each(x, y))
}

public func borderSpacing(x: Measurement) -> Property {
  return Property(PropertyNames.borderSpacing, PropertyValues.BorderSpacing.Both(x))
}

public func captionSide(value: PropertyValues.CaptionSide) -> Property {
  return Property(PropertyNames.captionSide, value)
}

public func emptyCells(value: PropertyValues.EmptyCells) -> Property {
  return Property(PropertyNames.emptyCells, value)
}

public func tableLayout(value: PropertyValues.TableLayout) -> Property {
  return Property(PropertyNames.tableLayout, value)
}
