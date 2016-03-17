protocol Property {
  func toString() -> String
}

extension Property {
  private func propertyString(property: String, value: String) -> String {
    return "\(property): \(value);"
  }
}

struct BackgroundImage: Property, BlockComponent {
  let URL: String
  init(_ URL: String) {
    self.URL = URL
  }

  func toString() -> String {
    return propertyString("background-image", value: URL)
  }
}

struct BackgroundColor: Property, BlockComponent {
  let color: String
  init(_ color: String) {
    self.color = color
  }

  func toString() -> String {
    return propertyString("background-color", value: color)
  }
}

struct Width: Property, BlockComponent {
  let value: String
  init(_ value: String) {
    self.value = value
  }

  func toString() -> String {
    return propertyString("width", value: value)
  }
}
