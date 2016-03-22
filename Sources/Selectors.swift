public struct Selectors {
  private init() {}

  public struct Class: Selector {
    let value: String
    let associated: [Selector]

    public init(_ value: String, _ associated: [Selector] = []) {
      self.value = value
      self.associated = associated
    }

    public var stringValue: String {
      return ".\(self.value)"
    }
  }

  public struct ID: Selector {
    let value: String
    let associated: [Selector]

    public init(_ value: String, _ associated: [Selector] = []) {
      self.value = value
      self.associated = associated
    }

    public var stringValue: String {
      return "#\(self.value)"
    }
  }

  public struct AttrContains: Selector {
    let label: String
    let value: String
    let associated: [Selector]

    public init(_ label: String, _ value: String, _ associated: [Selector] = []) {
      self.label = label
      self.value = value
      self.associated = associated
    }

    public var stringValue: String {
      return "[\(self.label)~=\"\(self.value)\"]"
    }
  }

  public struct El {
    public let stringValue: String

    public init(_ value: String) {
      self.stringValue = value
    }
  }

  public struct FirstChild {
    public let stringValue = ":first-child"
    
    public init() {}
  }
}
