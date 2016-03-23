public struct Values {
  private init() {}

  public enum Color {
    case Hex(String)
    case RGB(Int, Int, Int)
    case RGBA(Int, Int, Int, Double)
    case Transparent
    case Red
    case Blue
    case Green
    case Black
    case White

    var stringValue: String {
      switch self {
        case let Hex(value): return "#\(value)"
        case let RGB(r, g, b): return "rgb(\(r), \(g), \(b))"
        case let RGBA(r, g, b, a): return "rgb(\(r), \(g), \(b), \(a))"
        case Transparent: return "transparent"
        default: return String(self).lowercaseString
      }
    }
  }

  public enum Unit {
    case Px(Int)
    case Percent(Double)
    case Em(Double)
    case Rem(Double)

    var stringValue: String {
      switch self {
        case let Px(x): return "\(x)px"
        case let Percent(x): return "\(x)%"
        case let Em(x): return "\(x)em"
        case let Rem(x): return "\(x)rem"
      }
    }
  }
}
