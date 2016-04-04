extension Properties {
  public struct AlignContent: Property, StyleComponent {
    public let label = "align-content"
    public let value: PropertyValues.AlignContent
    public let stringValue: String

    public init(_ value: PropertyValues.AlignContent) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct AlignItems: Property, StyleComponent {
    public let label = "align-items"
    public let value: PropertyValues.AlignItems
    public let stringValue: String

    public init(_ value: PropertyValues.AlignItems) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct AlignSelf: Property, StyleComponent {
    public let label = "align-self"
    public let value: PropertyValues.AlignSelf
    public let stringValue: String

    public init(_ value: PropertyValues.AlignSelf) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct Flex: Property, StyleComponent {
    public let label = "flex"
    public let value: PropertyValues.Flex
    public let stringValue: String

    public init(_ value: PropertyValues.Flex) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct FlexBasis: Property, StyleComponent {
    public let label = "flex-basis"
    public let value: PropertyValues.NumberWithAuto
    public let stringValue: String

    public init(_ value: PropertyValues.NumberWithAuto) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct FlexDirection: Property, StyleComponent {
    public let label = "flex-direction"
    public let value: PropertyValues.FlexDirection
    public let stringValue: String

    public init(_ value: PropertyValues.FlexDirection) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct FlexFlow: Property, StyleComponent {
    public let label = "flex-flow"
    public let value: PropertyValues.FlexFlow
    public let stringValue: String

    public init(_ value: PropertyValues.FlexFlow) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct FlexGrow: Property, StyleComponent {
    public let label = "flex-grow"
    public let value: PropertyValues.Number
    public let stringValue: String

    public init(_ value: PropertyValues.Number) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct FlexShrink: Property, StyleComponent {
    public let label = "flex-shrink"
    public let value: PropertyValues.Number
    public let stringValue: String

    public init(_ value: PropertyValues.Number) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct FlexWrap: Property, StyleComponent {
    public let label = "flex-wrap"
    public let value: PropertyValues.FlexWrap
    public let stringValue: String

    public init(_ value: PropertyValues.FlexWrap) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct JustifyContent: Property, StyleComponent {
    public let label = "justify-content"
    public let value: PropertyValues.JustifyContent
    public let stringValue: String

    public init(_ value: PropertyValues.JustifyContent) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct Order: Property, StyleComponent {
    public let label = "order"
    public let value: PropertyValues.Number
    public let stringValue: String

    public init(_ value: PropertyValues.Number) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }
}
