extension PropertyDefinition {
  // sourcery: SimpleBuilder = "Value.Measurement"
  public static let borderWidth = PropertyDefinition(
    label: "border-width",
    description: "Sets the width on all four of an element's borders",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.Measurement"
  public static let borderLeftWidth = PropertyDefinition(
    label: "border-left-width",
    description: "Sets the width on an element's left border",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.Measurement"
  public static let borderRightWidth = PropertyDefinition(
    label: "border-right-width",
    description: "Sets the width on an element's right border",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.Measurement"
  public static let borderTopWidth = PropertyDefinition(
    label: "border-top-width",
    description: "Sets the width on an element's top border",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.Measurement"
  public static let borderBottomWidth = PropertyDefinition(
    label: "border-bottom-width",
    description: "Sets the width on an element's bottom border",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.Color"
  public static let borderColor = PropertyDefinition(
    label: "border-width",
    description: "Sets the width on all four of an element's borders",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.Color"
  public static let borderLeftColor = PropertyDefinition(
    label: "border-left-width",
    description: "Sets the width on an element's left border",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.Color"
  public static let borderRightColor = PropertyDefinition(
    label: "border-right-width",
    description: "Sets the width on an element's right border",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.Color"
  public static let borderTopColor = PropertyDefinition(
    label: "border-top-width",
    description: "Sets the width on an element's top border",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.Color"
  public static let borderBottomColor = PropertyDefinition(
    label: "border-bottom-width",
    description: "Sets the width on an element's bottom border",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.BorderStroke"
  public static let borderStyle = PropertyDefinition(
    label: "border-style",
    description: "Sets the stroke style on all four of an element's borders",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.BorderStroke"
  public static let borderLeftStyle = PropertyDefinition(
    label: "border-left-style",
    description: "Sets the stroke style on an element's left border",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.BorderStroke"
  public static let borderRightStyle = PropertyDefinition(
    label: "border-right-style",
    description: "Sets the stroke style on an element's right border",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.BorderStroke"
  public static let borderTopStyle = PropertyDefinition(
    label: "border-top-style",
    description: "Sets the stroke style on an element's top border",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.BorderStroke"
  public static let borderBottomStyle = PropertyDefinition(
    label: "border-bottom-style",
    description: "Sets the stroke style on an element's bottom border",
    level: .one
  )

  // sourcery: WrapperBuilder = "Value.Border"
  // sourcery: WrapperBuilderArgs = "width: Value.Measurement, style: Value.BorderStroke, color: Value.Color"
  // sourcery: WrapperArgs = "width: width, style: style, color: color"
  public static let border = PropertyDefinition(
    label: "border",
    description: "Sets all values — width, stroke, color — for all four of an element's borders",
    level: .one
  )

  // sourcery: WrapperBuilder = "Value.Border"
  // sourcery: WrapperBuilderArgs = "width: Value.Measurement, style: Value.BorderStroke, color: Value.Color"
  // sourcery: WrapperArgs = "width: width, style: style, color: color"
  public static let borderLeft = PropertyDefinition(
    label: "border-left",
    description: "Sets all values — width, stroke, color — for an element's left border",
    level: .one
  )

  // sourcery: WrapperBuilder = "Value.Border"
  // sourcery: WrapperBuilderArgs = "width: Value.Measurement, style: Value.BorderStroke, color: Value.Color"
  // sourcery: WrapperArgs = "width: width, style: style, color: color"
  public static let borderRight = PropertyDefinition(
    label: "border-right",
    description: "Sets all values — width, stroke, color — for an element's right border",
    level: .one
  )

  // sourcery: WrapperBuilder = "Value.Border"
  // sourcery: WrapperBuilderArgs = "width: Value.Measurement, style: Value.BorderStroke, color: Value.Color"
  // sourcery: WrapperArgs = "width: width, style: style, color: color"
  public static let borderTop = PropertyDefinition(
    label: "border-top",
    description: "Sets all values — width, stroke, color — for an element's top border",
    level: .one
  )

  // sourcery: WrapperBuilder = "Value.Border"
  // sourcery: WrapperBuilderArgs = "width: Value.Measurement, style: Value.BorderStroke, color: Value.Color"
  // sourcery: WrapperArgs = "width: width, style: style, color: color"
  public static let borderBottom = PropertyDefinition(
    label: "border-bottom",
    description: "Sets all values — width, stroke, color — for an element's bottom border",
    level: .one
  )
}
