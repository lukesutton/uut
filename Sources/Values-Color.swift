extension Values {
  public struct Colour {
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

    func set(red: Int? = nil, green: Int? = nil, blue: Int? = nil, alpha: Double? = nil) -> Colour {
      return Colour(red ?? self.red, green ?? self.green, blue ?? self.blue, alpha ?? self.alpha)
    }

    func invert() -> Colour {
      return self
    }

    func lighten(amount: Int) -> Colour {
      return self
    }

    func darken(amount: Int) -> Colour {
      return self
    }

    func saturate(amount: Int) -> Colour {
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
  }
}

extension Values.Colour: Hashable {
  public var hashValue: Int {
    return "\(red)\(green)\(blue)\(alpha)".hashValue
  }
}

extension Values.Colour: Equatable {}

public func ==(lhs: Values.Colour, rhs: Values.Colour) -> Bool {
  return lhs.hashValue == rhs.hashValue
}

extension Values.Colour: Comparable {}

public func <(lhs: Values.Colour, rhs: Values.Colour) -> Bool {
  return lhs.RGBATuple < lhs.RGBATuple
}
