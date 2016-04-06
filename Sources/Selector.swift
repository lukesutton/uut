public protocol Selector {
  var associated: [Selector] { get }
  var stringValue: String { get }
  var prefixStringValue: String { get }
}

extension Selector {
  public var stringValue: String {
    let suffix = associated.map {$0.stringValue}.joinWithSeparator("")
    return "\(prefixStringValue)\(suffix)"
  }
}
