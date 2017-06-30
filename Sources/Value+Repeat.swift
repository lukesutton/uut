extension Value {
  public enum Repeat: String, PropertyValue {
    case `repeat` = "repeat"
    case repeatX = "repeat-x"
    case repeatY = "repeat-y"
    case noRepeat = "no-repeat"
    case initial = "initial"
    case inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }
}
