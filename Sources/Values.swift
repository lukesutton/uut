public struct Values {
  private init() {}

  public enum Unit {
    case Number(Double)
    case Px(Int)
    case Percent(Double)
    case Em(Double)
    case Rem(Double)

    var stringValue: String {
      switch self {
        case let Number(x): return String(x)
        case let Px(x): return "\(x)px"
        case let Percent(x): return "\(x)%"
        case let Em(x): return "\(x)em"
        case let Rem(x): return "\(x)rem"
      }
    }
  }
}
