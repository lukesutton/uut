public protocol PropertyValue {
  var stringValue: String { get }
}

extension String: PropertyValue {
  public var stringValue: String {
    return self
  }
}
