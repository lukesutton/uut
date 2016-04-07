extension Values {
  public struct Color {
    let red: Int
    let green: Int
    let blue: Int
    let alpha: Double

    public init(_ red: Int, _ green: Int, _ blue: Int, _ alpha: Double = 1.0) {
      assert(red >= 0 && red <= 255, "Invalid red component")
      assert(green >= 0 && green <= 255, "Invalid green component")
      assert(blue >= 0 && blue <= 255, "Invalid blue component")
      assert(alpha >= 0.0 && alpha <= 1.0, "Invalid alpha component")

      self.red = red
      self.green = green
      self.blue = blue
      self.alpha = alpha
    }

    func set(red: Int? = nil, green: Int? = nil, blue: Int? = nil, alpha: Double? = nil) -> Color {
      return Color(red ?? self.red, green ?? self.green, blue ?? self.blue, alpha ?? self.alpha)
    }

    func invert() -> Color {
      return self
    }

    func lighten(amount: Int) -> Color {
      return self
    }

    func darken(amount: Int) -> Color {
      return self
    }

    func saturate(amount: Int) -> Color {
      return self
    }

    var RGBATuple: (Int, Int, Int, Double) {
      return (red, green, blue, alpha)
    }

    var RGBStringValue: String {
      return "rgba(\(red), \(green), \(blue))"
    }

    var RGBAStringValue: String {
      return "rgba(\(red), \(green), \(blue), \(alpha))"
    }

    var hexStringValue: String {
      return "#" + String(red, radix: 16) + String(green, radix: 16) + String(blue, radix: 16)
    }

    var stringValue: String {
      return RGBAStringValue
    }
  }
}

extension Values.Color: Hashable {
  public var hashValue: Int {
    return "\(red)\(green)\(blue)\(alpha)".hashValue
  }
}

extension Values.Color: Equatable {}

public func ==(lhs: Values.Color, rhs: Values.Color) -> Bool {
  return lhs.hashValue == rhs.hashValue
}

extension Values.Color: Comparable {}

public func <(lhs: Values.Color, rhs: Values.Color) -> Bool {
  return lhs.RGBATuple < lhs.RGBATuple
}
