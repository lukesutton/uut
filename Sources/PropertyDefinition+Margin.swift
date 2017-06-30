extension PropertyDefinition {
  // sourcery: WrapperBuilder = "Value.Margin"
  // sourcery: WrapperBuilderArgs = "top: Value.Measurement, right: Value.Measurement, bottom: Value.Measurement, left: Value.Measurement"
  // sourcery: WrapperArgs = "top: top, right: right, bottom: bottom, left: left"
  public static let margin = PropertyDefinition(
    label: "margin",
    description: "Sets the width on all four of an element's margins",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.Measurement"
  public static let marginTop = PropertyDefinition(
    label: "margin-top",
    description: "Sets the width on an element's top margin",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.Measurement"
  public static let marginRight = PropertyDefinition(
    label: "margin-right",
    description: "Sets the width on an element's right margin",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.Measurement"
  public static let marginBottom = PropertyDefinition(
    label: "margin-bottom",
    description: "Sets the width on an element's bottom margin",
    level: .one
  )

  // sourcery: SimpleBuilder = "Value.Measurement"
  public static let marginLeft = PropertyDefinition(
    label: "margin-left",
    description: "Sets the width on an element's left margin",
    level: .one
  )
}
