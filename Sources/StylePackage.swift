struct StylePackage {
  let name: String
  var styles: [Block]

  init(_ name: String) {
    self.name = name
    self.styles = []
  }

  mutating func add(blocks: [Block]) {
    self.styles = self.styles + blocks
  }

  mutating func add(blocks: Block...) {
    self.styles = self.styles + blocks
  }

  func toString() -> String {
    let blocks = styles.map {$0.toString()}.joinWithSeparator("\r\n")
    return blocks
  }
}
