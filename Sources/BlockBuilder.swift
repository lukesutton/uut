internal class BlockBuilder {
  private var selector: Selector
  private var storedProperties: [Property] = []
  private var storedChildren: [ChildDeclaration] = []
  private var storedModifiers: [Modifier] = []

  init(selector: Selector) {
    self.selector = selector
  }

  func properties(input: Property...) {
    self.storedProperties = input
  }

  func child(input: BaseDeclaration) {
    self.storedChildren.append(input.toChild())
  }

  func modifier(input: Modifier) {
    self.storedModifiers.append(input)
  }

  func toDeclaration() -> BaseDeclaration {
    return BaseDeclaration(
      selector: self.selector,
      properties: self.storedProperties,
      children: self.storedChildren,
      extensions: []
    )
  }
}
