struct Component {
  let block: Block

  init(name: String, properties: [Property], children: [Block], extensions: [Extension]) {
    let selector = classname("cp-\(name)")

    self.block = Block(
      mode: .Style,
      selector: selector.toSelectorStatement(),
      properties: properties,
      children: children,
      extensions: extensions
    )
  }

  func toString() -> String {
    return self.block.toString()
  }
}
