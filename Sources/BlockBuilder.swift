internal class BlockBuilder {
  private var selector: Selector
  private var storedProperties: [Property] = []
  private var storedChildren: [Block] = []

  init(selector: Selector) {
    self.selector = selector
  }

  func properties(input: Property...) {
    self.storedProperties = input
  }

  func child(input: Block) {
    self.storedChildren.append(input)
  }

  func toDeclaration() -> Block {
    return Block(
      mode: .Style,
      selector: self.selector,
      properties: self.storedProperties,
      children: self.storedChildren,
      extensions: []
    )
  }
}
