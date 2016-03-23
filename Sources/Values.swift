public struct Values {
  private init() {}

  public enum Color {
    case Hex(String)
    case RGB(Int, Int, Int)
    case RGBA(Int, Int, Int, Double)
    case Transparent
    case Initial
    case Inherit

    var stringValue: String {
      switch self {
        case let Hex(value): return "#\(value)"
        case let RGB(r, g, b): return "rgb(\(r), \(g), \(b))"
        case let RGBA(r, g, b, a): return "rgb(\(r), \(g), \(b), \(a))"
        case Transparent: return "transparent"
        case Initial: return "initial"
        case Inherit: return "inherit"
      }
    }
  }

  public enum Reset: String {
    case Initial = "initial"
    case Inherit = "inherit"
  }
}
