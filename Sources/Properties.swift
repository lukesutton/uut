protocol Property {}

struct BackgroundImage: Property, DeclarationChild {
  let URL: String
  init(_ URL: String) {
    self.URL = URL
  }
}

struct Width: Property, DeclarationChild {
  let value: String
  init(_ value: String) {
    self.value = value
  }
}
