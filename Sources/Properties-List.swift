extension Properties {
  public struct CounterIncrement: Property {
    public let label = "counter-increment"
    public let value: PropertyValues.NumberWithNone

    public init(_ value: PropertyValues.NumberWithNone) {
      self.value = value
    }

    public init(_ value: Int) {
      self.init(.Number(value))
    }

    public var stringValue: String {
      return value.stringValue
    }
  }

  public struct CounterReset: Property {
    public let label = "counter-reset"
    public let value: PropertyValues.CounterReset

    public init(_ value: PropertyValues.CounterReset) {
      self.value = value
    }

    public init(_ value: Int) {
      self.init(.Number(value))
    }

    public init(_ value: String) {
      self.init(.Name(value))
    }

    public var stringValue: String {
      return value.stringValue
    }
  }

  public struct ListStyle: Property {
    public let label = "list-style"
    public let value: PropertyValues.ListStyle

    public init(_ value: PropertyValues.ListStyle) {
      self.value = value
    }

    public init(style: PropertyValues.ListStyleType = .Disc, position: PropertyValues.ListStylePosition = .Outside, image: PropertyValues.URL = .None) {
      self.init(.Config(style, position, image))
    }

    public var stringValue: String {
      return value.stringValue
    }
  }

  public struct ListStyleImage: Property {
    public let label = "list-style-image"
    public let value: PropertyValues.URL

    public init(_ value: PropertyValues.URL) {
      self.value = value
    }

    public init(_ value: String) {
      self.init(.URL(value))
    }

    public var stringValue: String {
      return value.stringValue
    }
  }

  public struct ListStylePosition: Property {
    public let label = "list-style-position"
    public let value: PropertyValues.ListStylePosition

    public init(_ value: PropertyValues.ListStylePosition) {
      self.value = value
    }

    public var stringValue: String {
      return value.stringValue
    }
  }

  public struct ListStyleType: Property {
    public let label = "list-style-type"
    public let value: PropertyValues.ListStyleType

    public init(_ value: PropertyValues.ListStyleType) {
      self.value = value
    }

    public var stringValue: String {
      return value.stringValue
    }
  }
}
