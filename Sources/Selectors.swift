public struct Selectors {
  private init() {}

  public struct Class: Selector, SelectorStatementConvertible {
    public let value: String
    public let prefixStringValue: String
    public let associated: [Selector]

    public init(_ value: String, _ associated: Selector...) {
      self.value = value
      self.associated = associated
      self.prefixStringValue = ".\(value)"
    }
  }

  public struct ID: Selector, SelectorStatementConvertible {
    public let value: String
    public let prefixStringValue: String
    public let associated: [Selector]

    public init(_ value: String, _ associated: Selector...) {
      self.value = value
      self.associated = associated
      self.prefixStringValue = "#\(value)"
    }
  }

  public struct All: Selector, SelectorStatementConvertible {
    public let prefixStringValue = "*"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct HasAttr: Selector, SelectorStatementConvertible {
    public let label: String
    public let value: String
    public let prefixStringValue: String
    public let associated: [Selector]

    public init(_ label: String, _ value: String, _ associated: Selector...) {
      self.label = label
      self.value = value
      self.associated = associated
      self.prefixStringValue = "[\(value)]"
    }
  }

  public struct AttrEquals: Selector, SelectorStatementConvertible {
    public let label: String
    public let value: String
    public let prefixStringValue: String
    public let associated: [Selector]

    public init(_ label: String, _ value: String, _ associated: Selector...) {
      self.label = label
      self.value = value
      self.associated = associated
      self.prefixStringValue = "[\(label)=\"\(value)\"]"
    }
  }

  public struct AttrContains: Selector, SelectorStatementConvertible {
    public let label: String
    public let value: String
    public let prefixStringValue: String
    public let associated: [Selector]

    public init(_ label: String, _ value: String, _ associated: Selector...) {
      self.label = label
      self.value = value
      self.associated = associated
      self.prefixStringValue = "[\(label)~=\"\(value)\"]"
    }
  }

  public struct AttrStartsWith: Selector, SelectorStatementConvertible {
    public let label: String
    public let value: String
    public let prefixStringValue: String
    public let associated: [Selector]

    public init(_ label: String, _ value: String, _ associated: Selector...) {
      self.label = label
      self.value = value
      self.associated = associated
      self.prefixStringValue = "[\(label)^=\"\(value)\"]"
    }
  }

  public struct AttrEndsWith: Selector, SelectorStatementConvertible {
    public let label: String
    public let value: String
    public let prefixStringValue: String
    public let associated: [Selector]

    public init(_ label: String, _ value: String, _ associated: Selector...) {
      self.label = label
      self.value = value
      self.associated = associated
      self.prefixStringValue = "[\(label)$=\"\(value)\"]"
    }
  }

  public struct El: Selector, SelectorStatementConvertible {
    public let value: String
    public let prefixStringValue: String
    public let associated: [Selector]

    public init(_ value: String, _ associated: Selector...) {
      self.value = value
      self.associated = associated
      self.prefixStringValue = value
    }
  }

  public struct Active: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":active"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct After: Selector, SelectorStatementConvertible {
    public let prefixStringValue = "::active"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Before: Selector, SelectorStatementConvertible {
    public let prefixStringValue = "::before"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Checked: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":checked"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Disabled: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":disabled"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Empty: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":empty"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Enabled: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":enabled"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct FirstChild: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":first-child"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct FirstLetter: Selector, SelectorStatementConvertible {
    public let prefixStringValue = "::first-letter"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct FirstLine: Selector, SelectorStatementConvertible {
    public let prefixStringValue = "::empty"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct FirstOfType: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":first-of-type"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Focus: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":focus"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Hover: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":hover"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct InRange: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":in-range"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Lang: Selector, SelectorStatementConvertible {
    public let value: String
    public let prefixStringValue: String
    public let associated: [Selector]

    public init(value: String, associated: Selector...) {
      self.value = value
      self.associated = associated
      self.prefixStringValue = ":lang(\(value)"
    }
  }

  public struct LastChild: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":last-child"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct LastOfType: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":last-of-type"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Link: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":link"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Not: Selector, SelectorStatementConvertible {
    public let value: SelectorStatement
    public let prefixStringValue: String
    public let associated: [Selector]

    public init(value: SelectorStatementConvertible, associated: Selector...) {
      let statement = value.selectorStatement
      self.value = statement
      self.associated = associated
      self.prefixStringValue = ":not(\(statement.stringValue)"
    }
  }

  public struct NthChild: Selector, SelectorStatementConvertible {
    public let value: String
    public let prefixStringValue: String
    public let associated: [Selector]

    public init(value: String, associated: Selector...) {
      self.value = value
      self.associated = associated
      self.prefixStringValue = ":nth-child(\(value)"
    }
  }
  public struct NthLastChild: Selector, SelectorStatementConvertible {
    public let value: String
    public let prefixStringValue: String
    public let associated: [Selector]

    public init(value: String, associated: Selector...) {
      self.value = value
      self.associated = associated
      self.prefixStringValue = ":nth-last-child(\(value)"
    }
  }
  public struct NthLastOfType: Selector, SelectorStatementConvertible {
    public let value: String
    public let prefixStringValue: String
    public let associated: [Selector]

    public init(value: String, associated: Selector...) {
      self.value = value
      self.associated = associated
      self.prefixStringValue = ":nth-last-of-type(\(value)"
    }
  }
  public struct NthOfType: Selector, SelectorStatementConvertible {
    public let value: String
    public let prefixStringValue: String
    public let associated: [Selector]

    public init(value: String, associated: Selector...) {
      self.value = value
      self.associated = associated
      self.prefixStringValue = ":nth-of-type(\(value)"
    }
  }

  public struct OnlyOfType: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":only-of-type"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct OnlyChild: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":only-child"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Optional: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":optional"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct OutOfRange: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":out-of-range"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct ReadOnly: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":read-only"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct ReadWrite: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":read-write"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Required: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":required"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Root: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":root"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Selection: Selector, SelectorStatementConvertible {
    public let prefixStringValue = "::selection"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Target: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":target"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Valid: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":valid"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }

  public struct Visited: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":visited"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }
}
