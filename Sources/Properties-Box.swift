extension PropertyNames {
  static let boxSizing = "box-sizing"
  static let boxShadow = "box-shadow"
  static let bottom = "bottom"
  static let top = "top"
  static let left = "left"
  static let right = "right"
  static let position = "position"
  static let clear = "clear"
  static let clip = "clip"
  static let display = "display"
  static let float = "float"
  static let height = "height"
  static let margin = "margin"
  static let marginBottom = "margin-bottom"
  static let marginLeft = "margin-left"
  static let marginRight = "margin-right"
  static let marginTop = "margin-top"
  static let maxHeight = "max-height"
  static let maxWidth = "max-width"
  static let minHeight = "min-height"
  static let minWidth = "min-width"
  static let overflow = "overflow"
  static let overflowX = "overflow-x"
  static let overflowY = "overflow-y"
  static let padding = "padding"
  static let paddingLeft = "padding-left"
  static let paddingRight = "padding-right"
  static let paddingTop = "padding-top"
  static let paddingBottom = "padding-bottom"
  static let width = "width"
  static let visibility = "visibility"
  static let verticalAlign = "vertical-align"
  static let zIndex = "z-index"
}

public func boxSizing(value: PropertyValues.BoxSizing) -> Property {
  return Property(PropertyNames.boxSizing, value)
}

public func boxShadow(values: PropertyValues.Shadow...) -> Property {
  return Property(PropertyNames.boxShadow, PropertyValues.ShadowCollection(values))
}

public func bottom(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.bottom, value)
}

public func bottom(value: Measurement) -> Property {
  return Property(PropertyNames.bottom, PropertyValues.MeasurementWithAuto.Value(value))
}

public func top(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.top, value)
}

public func top(value: Measurement) -> Property {
  return Property(PropertyNames.top, PropertyValues.MeasurementWithAuto.Value(value))
}

public func left(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.left, value)
}

public func left(value: Measurement) -> Property {
  return Property(PropertyNames.left, PropertyValues.MeasurementWithAuto.Value(value))
}

public func right(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.right, value)
}

public func right(value: Measurement) -> Property {
  return Property(PropertyNames.right, PropertyValues.MeasurementWithAuto.Value(value))
}

public func position(value: PropertyValues.Position) -> Property {
  return Property(PropertyNames.position, value)
}

public func clear(value: PropertyValues.Clear) -> Property {
  return Property(PropertyNames.clear, value)
}

public func clip(value: PropertyValues.Clip) -> Property {
  return Property(PropertyNames.clip, value)
}

public func display(value: PropertyValues.Display) -> Property {
  return Property(PropertyNames.display, value)
}

public func float(value: PropertyValues.Float) -> Property {
  return Property(PropertyNames.float, value)
}

public func height(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.height, value)
}

public func height(value: Measurement) -> Property {
  return Property(PropertyNames.height, PropertyValues.MeasurementWithAuto.Value(value))
}

public func margin(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.margin, value)
}

public func margin(value: Measurement) -> Property {
  return Property(PropertyNames.margin, PropertyValues.MeasurementWithAuto.Value(value))
}

public func marginLeft(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.marginLeft, value)
}

public func marginLeft(value: Measurement) -> Property {
  return Property(PropertyNames.marginLeft, PropertyValues.MeasurementWithAuto.Value(value))
}

public func marginRight(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.marginRight, value)
}

public func marginRight(value: Measurement) -> Property {
  return Property(PropertyNames.marginRight, PropertyValues.MeasurementWithAuto.Value(value))
}

public func marginTop(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.marginTop, value)
}

public func marginTop(value: Measurement) -> Property {
  return Property(PropertyNames.marginTop, PropertyValues.MeasurementWithAuto.Value(value))
}

public func marginBottom(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.marginBottom, value)
}

public func marginBottom(value: Measurement) -> Property {
  return Property(PropertyNames.marginBottom, PropertyValues.MeasurementWithAuto.Value(value))
}

public func maxHeight(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.maxHeight, value)
}

public func maxHeight(value: Measurement) -> Property {
  return Property(PropertyNames.maxHeight, PropertyValues.MeasurementWithAuto.Value(value))
}

public func maxWidth(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.maxWidth, value)
}

public func maxWidth(value: Measurement) -> Property {
  return Property(PropertyNames.maxWidth, PropertyValues.MeasurementWithAuto.Value(value))
}

public func minHeight(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.minHeight, value)
}

public func minHeight(value: Measurement) -> Property {
  return Property(PropertyNames.minHeight, PropertyValues.MeasurementWithAuto.Value(value))
}

public func minWidth(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.minWidth, value)
}

public func minWidth(value: Measurement) -> Property {
  return Property(PropertyNames.minWidth, PropertyValues.MeasurementWithAuto.Value(value))
}

public func overflow(value: PropertyValues.Overflow) -> Property {
  return Property(PropertyNames.overflow, value)
}

public func overflowX(value: PropertyValues.Overflow) -> Property {
  return Property(PropertyNames.overflowX, value)
}

public func overflowY(value: PropertyValues.Overflow) -> Property {
  return Property(PropertyNames.overflowY, value)
}

public func padding(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.padding, value)
}

public func padding(value: Measurement) -> Property {
  return Property(PropertyNames.padding, PropertyValues.MeasurementWithAuto.Value(value))
}

public func paddingLeft(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.paddingLeft, value)
}

public func paddingLeft(value: Measurement) -> Property {
  return Property(PropertyNames.paddingLeft, PropertyValues.MeasurementWithAuto.Value(value))
}

public func paddingRight(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.paddingRight, value)
}

public func paddingRight(value: Measurement) -> Property {
  return Property(PropertyNames.paddingRight, PropertyValues.MeasurementWithAuto.Value(value))
}

public func paddingTop(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.paddingTop, value)
}

public func paddingTop(value: Measurement) -> Property {
  return Property(PropertyNames.paddingTop, PropertyValues.MeasurementWithAuto.Value(value))
}

public func paddingBottom(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.paddingBottom, value)
}

public func paddingBottom(value: Measurement) -> Property {
  return Property(PropertyNames.paddingBottom, PropertyValues.MeasurementWithAuto.Value(value))
}

public func width(value: PropertyValues.MeasurementWithAuto) -> Property {
  return Property(PropertyNames.width, value)
}

public func width(value: Measurement) -> Property {
  return Property(PropertyNames.width, PropertyValues.MeasurementWithAuto.Value(value))
}

public func verticalAlign(value: PropertyValues.VerticalAlign) -> Property {
  return Property(PropertyNames.verticalAlign, value)
}

public func zIndex(value: PropertyValues.NumberWithAuto) -> Property {
  return Property(PropertyNames.zIndex, value)
}

public func zIndex(value: Int) -> Property {
  return Property(PropertyNames.zIndex, PropertyValues.NumberWithAuto.Value(value))
}
