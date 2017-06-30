extension Value {
  public struct Border: PropertyValue {
    let width: Measurement
    let style: BorderStroke
    let color: Color

    public var stringValue: String {
      return "\(width.stringValue) \(style.stringValue) \(color.stringValue)"
    }
  }
}
