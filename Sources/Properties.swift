protocol Property {
  func toString() -> String
}

extension Property {
  private func propertyString(property: String, value: String) -> String {
    return "\(property): \(value);"
  }
}

struct BackgroundImage: Property, DeclarationChild {
  let URL: String
  init(_ URL: String) {
    self.URL = URL
  }

  func toString() -> String {
    return propertyString("background-image", value: URL)
  }
}

struct Width: Property, DeclarationChild {
  let value: String
  init(_ value: String) {
    self.value = value
  }

  func toString() -> String {
    return propertyString("width", value: value)
  }
}
