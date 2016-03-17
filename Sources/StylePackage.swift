struct StylePackage {
  let name: String
  var styles: [Block] = []
  var components: [Component] = []

  init(_ name: String) {
    self.name = name
  }

  mutating func add(blocks: [Block]) {
    self.styles = self.styles + blocks
  }

  mutating func add(blocks: Block...) {
    self.styles = self.styles + blocks
  }

  mutating func add(components: [Component]) {
    self.components = self.components + components
  }

  mutating func add(components: Component...) {
    self.components = self.components + components
  }

  func toString() -> String {
    let blocks = styles.map {$0.toString()}
    let cps = components.map {$0.toString()}
    return (blocks + cps).joinWithSeparator("\r\n")
  }
}
