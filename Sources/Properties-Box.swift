extension Properties {
  // Position

  public struct Bottom: Property, SimpleProperty, StyleComponent {
    public let label = "bottom"
    public let value: String

    public init(_ value: PropertyValues.Unit) {
      self.value = value.stringValue
    }
  }

  public struct Top: Property, SimpleProperty, StyleComponent {
    public let label = "top"
    public let value: String

    public init(_ value: PropertyValues.Unit) {
      self.value = value.stringValue
    }
  }

  public struct Left: Property, SimpleProperty, StyleComponent {
    public let label = "bottom"
    public let value: String

    public init(_ value: PropertyValues.Unit) {
      self.value = value.stringValue
    }
  }

  public struct Right: Property, SimpleProperty, StyleComponent {
    public let label = "top"
    public let value: String

    public init(_ value: PropertyValues.Unit) {
      self.value = value.stringValue
    }
  }

  public struct Position: Property, SimpleProperty, StyleComponent {
    public enum PositionValue {
      case Static
      case Absolute
      case Fixed
      case Relative
      case Initial
      case Inherit

      var stringValue: String {
        return String(self).lowercaseString
      }
    }

    public let label = "top"
    public let value: String

    public init(_ value: PositionValue) {
      self.value = value.stringValue
    }
  }

  // Other

  public struct Clear: Property, SimpleProperty, StyleComponent {
    public enum ClearValue {
      case None
      case Left
      case Right
      case Both
      case Initial
      case Inherit

      var stringValue: String {
        return String(self).lowercaseString
      }
    }

    public let label = "clear"
    public let value: String

    public init(_ value: ClearValue) {
      self.value = value.stringValue
    }
  }

  public struct Clip: Property, SimpleProperty, StyleComponent {
    public enum ClearValue {
      case None
      case Left
      case Right
      case Both
      case Initial
      case Inherit

      var stringValue: String {
        return String(self).lowercaseString
      }
    }

    public let label = "clear"
    public let value: String

    public init(_ value: ClearValue) {
      self.value = value.stringValue
    }
  }
}
