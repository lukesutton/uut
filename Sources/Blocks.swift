protocol BlockComponent {

}
struct Block: BlockComponent {
  enum Mode {
    case Style
    case Modifier
  }

  let mode: Mode
  let selector: SelectorStatement
  let properties: [Property]
  let children: [Block]
  let extensions: [Extension]

  // This could be extended to optionally take an argument that determines
  // which versions of properties should be produced e.g. browser specific
  func toString() -> String {
    let selectorString = self.selector.toString()
    let propertyStrings = self.properties.map {$0.toString()}.joinWithSeparator(" ")

    return [selectorString, "{", propertyStrings, "}"].joinWithSeparator(" ")
  }
}

struct Extension: BlockComponent {
  let block: Block
}
