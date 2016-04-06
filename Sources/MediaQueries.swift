public struct MediaQueries {
  private init() {}
  
  // Media Type
  public struct All: MediaQuery, MediaQueryStatementConvertible {
    public let stringValue = "all"
    public init() {}
  }

  public struct Aural: MediaQuery, MediaQueryStatementConvertible {
    public let stringValue = "aural"
    public init() {}
  }

  public struct Braille: MediaQuery, MediaQueryStatementConvertible {
    public let stringValue = "braille"
    public init() {}
  }

  public struct Handheld: MediaQuery, MediaQueryStatementConvertible {
    public let stringValue = "handheld"
    public init() {}
  }

  public struct Print: MediaQuery, MediaQueryStatementConvertible {
    public let stringValue = "print"
    public init() {}
  }

  public struct Projection: MediaQuery, MediaQueryStatementConvertible {
    public let stringValue = "projection"
    public init() {}
  }

  public struct Screen: MediaQuery, MediaQueryStatementConvertible {
    public let stringValue = "braille"
    public init() {}
  }

  public struct TTY: MediaQuery, MediaQueryStatementConvertible {
    public let stringValue = "tty"
    public init() {}
  }

  public struct TV: MediaQuery, MediaQueryStatementConvertible {
    public let stringValue = "tv"
    public init() {}
  }

  public struct Embossed: MediaQuery, MediaQueryStatementConvertible {
    public let stringValue = "embossed"
    public init() {}
  }

  // Width, height etc

  public struct Width: MediaQuery, MediaQueryStatementConvertible {
    let label = "width"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  public struct MinWidth: MediaQuery, MediaQueryStatementConvertible {
    let label = "min-width"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  public struct MaxWidth: MediaQuery, MediaQueryStatementConvertible {
    let label = "max-width"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  public struct Height: MediaQuery, MediaQueryStatementConvertible {
    let label = "height"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  public struct MinHeight: MediaQuery, MediaQueryStatementConvertible {
    let label = "min-height"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  public struct MaxHeight: MediaQuery, MediaQueryStatementConvertible {
    let label = "max-height"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  // Device

  public struct DeviceWidth: MediaQuery, MediaQueryStatementConvertible {
    let label = "device-width"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  public struct MinDeviceWidth: MediaQuery, MediaQueryStatementConvertible {
    let label = "min-device-width"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  public struct MaxDeviceWidth: MediaQuery, MediaQueryStatementConvertible {
    let label = "max-device-width"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  public struct DeviceHeight: MediaQuery, MediaQueryStatementConvertible {
    let label = "device-height"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  public struct MinDeviceHeight: MediaQuery, MediaQueryStatementConvertible {
    let label = "min-device-height"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  public struct MaxDeviceHeight: MediaQuery, MediaQueryStatementConvertible {
    let label = "max-device-height"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  public struct AspectRatio: MediaQuery, MediaQueryStatementConvertible {
    let label = "aspect-ratio"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  public struct MinAspectRatio: MediaQuery, MediaQueryStatementConvertible {
    let label = "min-aspect-ratio"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  public struct MaxAspectRatio: MediaQuery, MediaQueryStatementConvertible {
    let label = "max-aspect-ratio"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  public struct DeviceAspectRatio: MediaQuery, MediaQueryStatementConvertible {
    let label = "device-aspect-ratio"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  public struct MinDeviceAspectRatio: MediaQuery, MediaQueryStatementConvertible {
    let label = "min-device-aspect-ratio"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  public struct MaxDeviceAspectRatio: MediaQuery, MediaQueryStatementConvertible {
    let label = "max-device-aspect-ratio"
    let value: Values.Unit
    public let stringValue: String

    public init(_ width: Values.Unit) {
      self.value = width
      self.stringValue = "(\(self.label): \(width.stringValue))"
    }
  }

  // Color

  // Resolution

  // Etc.
}
