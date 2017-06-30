extension Value {
  public struct Margin: PropertyValue {
    let top: Measurement
    let right: Measurement
    let bottom: Measurement
    let left: Measurement

    public var stringValue: String {
      return "\(top.stringValue) \(right.stringValue) \(bottom.stringValue) \(left.stringValue)"
    }
  }
}
