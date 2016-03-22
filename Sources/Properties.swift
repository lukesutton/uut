public struct Properties {
  private init() {}

  struct BackgroundImage: Property, SimpleProperty {
    let label = "background-image"
    let value: String

    init(_ value: String) {
      self.value = value
    }
  }
}
