func style(selector: Selector, _ inputs: DeclarationChild...) -> BaseDeclaration {
  let extracted = extractInputs(inputs)

  return BaseDeclaration(
    selector: selector,
    properties: extracted.properties,
    children: extracted.children
  )
}

func child(selector: Selector, _ inputs: DeclarationChild...) -> ChildDeclaration {
  let extracted = extractInputs(inputs)

  return ChildDeclaration(
    selector: selector,
    properties: extracted.properties,
    children: extracted.children
  )
}

func builder(selector: Selector, config: (BlockBuilder -> Void)) -> BaseDeclaration {
  let blockBuilder = BlockBuilder(selector: selector)
  config(blockBuilder)
  return blockBuilder.toDeclaration()
}

private func extractInputs(inputs: [DeclarationChild]) -> (properties: [Property], children: [ChildDeclaration]) {
  let properties = inputs.filter {$0 is Property}.map {$0 as! Property}
  let children = inputs.filter {$0 is ChildDeclaration}.map {$0 as! ChildDeclaration}

  return (properties: properties, children: children)
}
