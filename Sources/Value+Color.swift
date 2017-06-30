extension Value {
  public struct Color: PropertyValue {
    let representation: Representation

    public enum Keyword: String {
      case red
      case green
      case blue
      case yellow
    }

    enum Representation {
      case rgb(Int, Int, Int)
      case rgba(Int, Int, Int, Double)
      case hex(String)
      case keyword(Keyword)
    }

    public static func rgb(_ r: Int, g: Int, b: Int) -> Color {
      return Color(representation: .rgb(r, g, b))
    }

    public static func rgba(_ r: Int, g: Int, b: Int, a: Double) -> Color {
      return Color(representation: .rgba(r, g, b, a))
    }

    public static func hex(_ value: String) -> Color {
      return Color(representation: .hex(value))
    }

    public static func keyword(_ value: Keyword) -> Color {
      return Color(representation: .keyword(value))
    }

    public var stringValue: String {
      switch representation {
      case let .rgb(r, g, b): return "rgb(\(r), \(g), \(b))"
      case let .rgba(r, g, b, a): return "rgb(\(r), \(g), \(b), \(a)"
      case let .hex(val): return val
      case let .keyword(val): return val.rawValue
      }
    }
  }
}
