extension PropertyNames {
  public static let border = "border"
  public static let borderColor = "border-color"
  public static let borderStyle = "border-style"
  public static let borderWidth = "border-width"
  public static let borderBottom = "border-bottom"
  public static let borderBottomColor = "border-bottom-color"
  public static let borderBottomStyle = "border-bottom-style"
  public static let borderBottomWidth = "border-bottom-width"
  public static let borderLeft = "border-left"
  public static let borderLeftColor = "border-left-color"
  public static let borderLeftStyle = "border-left-style"
  public static let borderLeftWidth = "border-left-width"
  public static let borderRight = "border-right"
  public static let borderRightColor = "border-right-color"
  public static let borderRightStyle = "border-right-style"
  public static let borderRightWidth = "border-right-width"
  public static let borderTop = "border-top"
  public static let borderTopColor = "border-top-color"
  public static let borderTopStyle = "border-top-style"
  public static let borderTopWidth = "border-top-width"
  public static let borderRadius = "border-radius"
  public static let borderRightRadius = "border-right-radius"
  public static let borderLeftRadius = "border-left-radius"
  public static let borderTopLeftRadius = "border-top-left-radius"
  public static let borderTopRightRadius = "border-top-right-radius"
  public static let borderBottomLeftRadius = "border-bottom-left-radius"
  public static let borderBottomRightRadius = "border-bottom-right-radius"
}

// Border

public func border(width: PropertyValues.BorderWidth, _ style: PropertyValues.BorderStyle, _ color: PropertyValues.Color) -> Property {
  return Property(PropertyNames.border, PropertyValues.Border(width, style, color))
}

public func border(value: PropertyValues.Reset) -> Property {
  return Property(PropertyNames.border, PropertyValues.Border(value))
}

public func borderColor(value: PropertyValues.Color) -> Property {
  return Property(PropertyNames.borderColor, value)
}

public func borderColor(value: Values.Color) -> Property {
  return Property(PropertyNames.borderColor, PropertyValues.Color.Value(value))
}

public func borderStyle(value: PropertyValues.BorderStyle) -> Property {
  return Property(PropertyNames.borderStyle, value)
}

public func borderWidth(value: PropertyValues.BorderWidth) -> Property {
  return Property(PropertyNames.borderWidth, value)
}

public func borderWidth(value: Measurement) -> Property {
  return Property(PropertyNames.borderColor, PropertyValues.BorderWidth.Value(value))
}

// Border left

public func borderLeft(width: PropertyValues.BorderWidth, _ style: PropertyValues.BorderStyle, _ color: PropertyValues.Color) -> Property {
  return Property(PropertyNames.borderLeft, PropertyValues.Border(width, style, color))
}

public func borderLeftLeft(value: PropertyValues.Reset) -> Property {
  return Property(PropertyNames.borderLeft, PropertyValues.Border(value))
}

public func borderLeftColor(value: PropertyValues.Color) -> Property {
  return Property(PropertyNames.borderLeftColor, value)
}

public func borderLeftColor(value: Values.Color) -> Property {
  return Property(PropertyNames.borderLeftColor, PropertyValues.Color.Value(value))
}

public func borderLeftStyle(value: PropertyValues.BorderStyle) -> Property {
  return Property(PropertyNames.borderLeftStyle, value)
}

public func borderLeftWidth(value: PropertyValues.BorderWidth) -> Property {
  return Property(PropertyNames.borderLeftWidth, value)
}

public func borderLeftWidth(value: Measurement) -> Property {
  return Property(PropertyNames.borderLeftColor, PropertyValues.BorderWidth.Value(value))
}

// Border Right

public func borderRight(width: PropertyValues.BorderWidth, _ style: PropertyValues.BorderStyle, _ color: PropertyValues.Color) -> Property {
  return Property(PropertyNames.borderRight, PropertyValues.Border(width, style, color))
}

public func borderRight(value: PropertyValues.Reset) -> Property {
  return Property(PropertyNames.borderRight, PropertyValues.Border(value))
}

public func borderRightColor(value: PropertyValues.Color) -> Property {
  return Property(PropertyNames.borderRightColor, value)
}

public func borderRightColor(value: Values.Color) -> Property {
  return Property(PropertyNames.borderRightColor, PropertyValues.Color.Value(value))
}

public func borderRightStyle(value: PropertyValues.BorderStyle) -> Property {
  return Property(PropertyNames.borderRightStyle, value)
}

public func borderRightWidth(value: PropertyValues.BorderWidth) -> Property {
  return Property(PropertyNames.borderRightWidth, value)
}

public func borderRightWidth(value: Measurement) -> Property {
  return Property(PropertyNames.borderRightColor, PropertyValues.BorderWidth.Value(value))
}

// Border bottom

public func borderBottom(width: PropertyValues.BorderWidth, _ style: PropertyValues.BorderStyle, _ color: PropertyValues.Color) -> Property {
  return Property(PropertyNames.borderBottom, PropertyValues.Border(width, style, color))
}

public func borderBottom(value: PropertyValues.Reset) -> Property {
  return Property(PropertyNames.borderBottom, PropertyValues.Border(value))
}

public func borderBottomColor(value: PropertyValues.Color) -> Property {
  return Property(PropertyNames.borderBottomColor, value)
}

public func borderBottomColor(value: Values.Color) -> Property {
  return Property(PropertyNames.borderBottomColor, PropertyValues.Color.Value(value))
}

public func borderBottomStyle(value: PropertyValues.BorderStyle) -> Property {
  return Property(PropertyNames.borderBottomStyle, value)
}

public func borderBottomWidth(value: PropertyValues.BorderWidth) -> Property {
  return Property(PropertyNames.borderBottomWidth, value)
}

public func borderBottomWidth(value: Measurement) -> Property {
  return Property(PropertyNames.borderBottomColor, PropertyValues.BorderWidth.Value(value))
}

// Border radius

public func borderRadius(value: PropertyValues.MeasurementStandard) -> Property {
  return Property(PropertyNames.borderRadius, value)
}

public func borderRadius(value: Measurement) -> Property {
  return Property(PropertyNames.borderRadius, PropertyValues.MeasurementStandard.Value(value))
}

public func borderLeftRadius(value: PropertyValues.MeasurementStandard) -> Property {
  return Property(PropertyNames.borderLeftRadius, value)
}

public func borderLeftRadius(value: Measurement) -> Property {
  return Property(PropertyNames.borderLeftRadius, PropertyValues.MeasurementStandard.Value(value))
}

public func borderRightRadius(value: PropertyValues.MeasurementStandard) -> Property {
  return Property(PropertyNames.borderRightRadius, value)
}

public func borderRightRadius(value: Measurement) -> Property {
  return Property(PropertyNames.borderRightRadius, PropertyValues.MeasurementStandard.Value(value))
}

public func borderTopLeftRadius(value: PropertyValues.MeasurementStandard) -> Property {
  return Property(PropertyNames.borderTopLeftRadius, value)
}

public func borderTopLeftRadius(value: Measurement) -> Property {
  return Property(PropertyNames.borderTopLeftRadius, PropertyValues.MeasurementStandard.Value(value))
}

public func borderTopRightRadius(value: PropertyValues.MeasurementStandard) -> Property {
  return Property(PropertyNames.borderTopRightRadius, value)
}

public func borderTopRightRadius(value: Measurement) -> Property {
  return Property(PropertyNames.borderTopRightRadius, PropertyValues.MeasurementStandard.Value(value))
}

public func borderBottomLeftRadius(value: PropertyValues.MeasurementStandard) -> Property {
  return Property(PropertyNames.borderBottomLeftRadius, value)
}

public func borderBottomLeftRadius(value: Measurement) -> Property {
  return Property(PropertyNames.borderBottomLeftRadius, PropertyValues.MeasurementStandard.Value(value))
}

public func borderBottomRightRadius(value: PropertyValues.MeasurementStandard) -> Property {
  return Property(PropertyNames.borderBottomRightRadius, value)
}

public func borderBottomRightRadius(value: Measurement) -> Property {
  return Property(PropertyNames.borderBottomRightRadius, PropertyValues.MeasurementStandard.Value(value))
}
