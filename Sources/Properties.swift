protocol Property {}

struct BackgroundImage: Property, DeclarationChild {
  let URL: String
  init(_ URL: String) {
    self.URL = URL
  }
}
