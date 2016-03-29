public protocol Property {
  var label: String { get }
  var stringValue: String { get }
}

func ==(rhs: Property, lhs: Property) -> Bool {
  return rhs.label == rhs.label && rhs.stringValue == lhs.stringValue
}
