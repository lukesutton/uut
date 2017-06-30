// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension Property {

  /**
    Generates a `Property` based on `PropertyDefinition.backgroundColor`.
  **/
  public static func backgroundColor(_ value: Value.Color) -> Property {
    return Property(definition: .backgroundColor, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.borderWidth`.
  **/
  public static func borderWidth(_ value: Value.Measurement) -> Property {
    return Property(definition: .borderWidth, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.borderLeftWidth`.
  **/
  public static func borderLeftWidth(_ value: Value.Measurement) -> Property {
    return Property(definition: .borderLeftWidth, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.borderRightWidth`.
  **/
  public static func borderRightWidth(_ value: Value.Measurement) -> Property {
    return Property(definition: .borderRightWidth, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.borderTopWidth`.
  **/
  public static func borderTopWidth(_ value: Value.Measurement) -> Property {
    return Property(definition: .borderTopWidth, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.borderBottomWidth`.
  **/
  public static func borderBottomWidth(_ value: Value.Measurement) -> Property {
    return Property(definition: .borderBottomWidth, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.borderColor`.
  **/
  public static func borderColor(_ value: Value.Color) -> Property {
    return Property(definition: .borderColor, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.borderLeftColor`.
  **/
  public static func borderLeftColor(_ value: Value.Color) -> Property {
    return Property(definition: .borderLeftColor, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.borderRightColor`.
  **/
  public static func borderRightColor(_ value: Value.Color) -> Property {
    return Property(definition: .borderRightColor, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.borderTopColor`.
  **/
  public static func borderTopColor(_ value: Value.Color) -> Property {
    return Property(definition: .borderTopColor, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.borderBottomColor`.
  **/
  public static func borderBottomColor(_ value: Value.Color) -> Property {
    return Property(definition: .borderBottomColor, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.borderStyle`.
  **/
  public static func borderStyle(_ value: Value.BorderStroke) -> Property {
    return Property(definition: .borderStyle, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.borderLeftStyle`.
  **/
  public static func borderLeftStyle(_ value: Value.BorderStroke) -> Property {
    return Property(definition: .borderLeftStyle, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.borderRightStyle`.
  **/
  public static func borderRightStyle(_ value: Value.BorderStroke) -> Property {
    return Property(definition: .borderRightStyle, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.borderTopStyle`.
  **/
  public static func borderTopStyle(_ value: Value.BorderStroke) -> Property {
    return Property(definition: .borderTopStyle, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.borderBottomStyle`.
  **/
  public static func borderBottomStyle(_ value: Value.BorderStroke) -> Property {
    return Property(definition: .borderBottomStyle, value: value)
  }

  /**
    Generates a `Property` based on `PropertyDefinition.border`.
  **/
  public static func border(width: Value.Measurement, style: Value.BorderStroke, color: Value.Color) -> Property {
    let value = Value.Border(width: width, style: style, color: color)
    return Property(definition: .border, value: value)
  }
  /**
    Generates a `Property` based on `PropertyDefinition.borderLeft`.
  **/
  public static func borderLeft(width: Value.Measurement, style: Value.BorderStroke, color: Value.Color) -> Property {
    let value = Value.Border(width: width, style: style, color: color)
    return Property(definition: .borderLeft, value: value)
  }
  /**
    Generates a `Property` based on `PropertyDefinition.borderRight`.
  **/
  public static func borderRight(width: Value.Measurement, style: Value.BorderStroke, color: Value.Color) -> Property {
    let value = Value.Border(width: width, style: style, color: color)
    return Property(definition: .borderRight, value: value)
  }
  /**
    Generates a `Property` based on `PropertyDefinition.borderTop`.
  **/
  public static func borderTop(width: Value.Measurement, style: Value.BorderStroke, color: Value.Color) -> Property {
    let value = Value.Border(width: width, style: style, color: color)
    return Property(definition: .borderTop, value: value)
  }
  /**
    Generates a `Property` based on `PropertyDefinition.borderBottom`.
  **/
  public static func borderBottom(width: Value.Measurement, style: Value.BorderStroke, color: Value.Color) -> Property {
    let value = Value.Border(width: width, style: style, color: color)
    return Property(definition: .borderBottom, value: value)
  }
  /**
    Generates a `Property` based on `PropertyDefinition.margin`.
  **/
  public static func margin(top: Value.Measurement, right: Value.Measurement, bottom: Value.Measurement, left: Value.Measurement) -> Property {
    let value = Value.Margin(top: top, right: right, bottom: bottom, left: left)
    return Property(definition: .margin, value: value)
  }

  /**
    Generates a `Property` based on `PropertyDefinition.marginTop`.
  **/
  public static func marginTop(_ value: Value.Measurement) -> Property {
    return Property(definition: .marginTop, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.marginRight`.
  **/
  public static func marginRight(_ value: Value.Measurement) -> Property {
    return Property(definition: .marginRight, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.marginBottom`.
  **/
  public static func marginBottom(_ value: Value.Measurement) -> Property {
    return Property(definition: .marginBottom, value: value)
  }


  /**
    Generates a `Property` based on `PropertyDefinition.marginLeft`.
  **/
  public static func marginLeft(_ value: Value.Measurement) -> Property {
    return Property(definition: .marginLeft, value: value)
  }

}
