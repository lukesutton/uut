extension Values {
  public struct Font {
    public let name: String

    public init(_ name: String) {
      self.name = name
    }
  }

  public struct FontFamily {
    public let values: [Font]
    public let fallback: FontFamilyFallback?

    public init(_ values: FontConvertible..., fallback: FontFamilyFallback? = nil) {
      self.values = values.map {$0.font}
      self.fallback = fallback
    }

    var stringValue: String {
      if let fallback = fallback {
        return (values.map {$0.name} + [fallback.stringValue]).joinWithSeparator(", ")
      }
      else {
        return values.map {$0.name}.joinWithSeparator(", ")
      }
    }
  }

  public enum FontFamilyFallback {
    case SansSerif
    case Serif
    case Cursive
    case Fantasy
    case Monospace

    var stringValue: String {
      return String(self).lowercaseString
    }
  }
}

public protocol FontConvertible {
  var font: Values.Font { get }
}

extension Values.Font: FontConvertible {
  public var font: Values.Font {
    return self
  }
}

extension String: FontConvertible {
  public var font: Values.Font {
    return Values.Font(self)
  }
}
