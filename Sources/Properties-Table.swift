extension Properties {
  public struct BorderCollapse: Property {
    public let label = "border-collapse"
    public let value: PropertyValues.BorderCollapse

    public init(_ value: PropertyValues.BorderCollapse) {
      self.value = value
    }

    public var stringValue: String {
      return value.stringValue
    }
  }

  public struct BorderSpacing: Property {
    public let label = "border-spacing"
    public let value: PropertyValues.BorderSpacing

    public init(_ value: PropertyValues.BorderSpacing) {
      self.value = value
    }

    public init(_ x: Measurement, _ y: Measurement) {
      self.init(.Each(x, y))
    }

    public init(_ x: Measurement) {
      self.init(.Both(x))
    }

    public var stringValue: String {
      return value.stringValue
    }
  }

  public struct CaptionSide: Property {
    public let label = "caption-side"
    public let value: PropertyValues.CaptionSide

    public init(_ value: PropertyValues.CaptionSide) {
      self.value = value
    }

    public var stringValue: String {
      return value.stringValue
    }
  }

  public struct EmptyCells: Property {
    public let label = "empty-cells"
    public let value: PropertyValues.EmptyCells

    public init(_ value: PropertyValues.EmptyCells) {
      self.value = value
    }

    public var stringValue: String {
      return value.stringValue
    }
  }

  public struct TableLayout: Property {
    public let label = "table-layout"
    public let value: PropertyValues.TableLayout

    public init(_ value: PropertyValues.TableLayout) {
      self.value = value
    }

    public var stringValue: String {
      return value.stringValue
    }
  }
}
