extension Properties {
  // Position

  public struct Bottom: Property, StyleComponent {
    public let label = "bottom"
    public let value: PropertyValues.Unit
    public let stringValue: String

    public init(_ value: PropertyValues.Unit) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct Top: Property, StyleComponent {
    public let label = "top"
    public let value: PropertyValues.Unit
    public let stringValue: String

    public init(_ value: PropertyValues.Unit) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct Left: Property, StyleComponent {
    public let label = "bottom"
    public let value: PropertyValues.Unit
    public let stringValue: String

    public init(_ value: PropertyValues.Unit) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct Right: Property, StyleComponent {
    public let label = "top"
    public let value: PropertyValues.Unit
    public let stringValue: String

    public init(_ value: PropertyValues.Unit) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct Position: Property, StyleComponent {
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
    public let value: PositionValue
    public let stringValue: String

    public init(_ value: PositionValue) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  // Other

  public struct Clear: Property, StyleComponent {
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
    public let value: ClearValue
    public let stringValue: String

    public init(_ value: ClearValue) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }

  public struct Clip: Property, StyleComponent {
    public enum ClipValue {
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
    public let value: ClipValue
    public let stringValue: String

    public init(_ value: ClipValue) {
      self.value = value
      self.stringValue = value.stringValue
    }
  }
}
