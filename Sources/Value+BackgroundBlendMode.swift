extension Value {
  public enum BackgroundBlendMode: String, PropertyValue {
    case normal = "normal"
    case multiply = "multiply"
    case screen = "screen"
    case overlay = "overlay"
    case darken = "darken"
    case lighten = "lighten"
    case colorDodge = "color-dodge"
    case saturation = "saturation"
    case color = "color"
    case luminosity = "luminosity"
    case initial = "initial"
    case inherit = "inherit"

    public var stringValue: String {
      return rawValue
    }
  }
}
