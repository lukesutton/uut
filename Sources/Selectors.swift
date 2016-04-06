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

  public struct AttrContains: Selector, SelectorStatementConvertible {
    public let label: String
    public let value: String
    public let prefixStringValue: String
    public let associated: [Selector]

    public init(_ label: String, _ value: String, _ associated: Selector...) {
      self.label = label
      self.value = value
      self.associated = associated
      self.prefixStringValue = "[\(self.label)~=\"\(self.value)\"]"
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

  public struct FirstChild: Selector, SelectorStatementConvertible {
    public let prefixStringValue = ":first-child"
    public let associated: [Selector]

    public init(associated: Selector...) {
      self.associated = associated
    }
  }
}
