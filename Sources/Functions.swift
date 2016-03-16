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

func mixin(inputs: DeclarationChild...) -> Mixin {
  let extracted = extractInputs(inputs)
  return Mixin(properties: extracted.properties, children: extracted.children)
}

func mixin(inputs: [DeclarationChild]) -> Mixin {
  let extracted = extractInputs(inputs)
  return Mixin(properties: extracted.properties, children: extracted.children)
}

func builder(selector: Selector, config: (BlockBuilder -> Void)) -> BaseDeclaration {
  let blockBuilder = BlockBuilder(selector: selector)
  config(blockBuilder)
  return blockBuilder.toDeclaration()
}

private func extractInputs(inputs: [DeclarationChild]) -> (properties: [Property], children: [ChildDeclaration]) {
  // This should actually be done differently, since they should be processed
  // in order.
  let properties = inputs.filter {$0 is Property}.map {$0 as! Property}
  let children = inputs.filter {$0 is ChildDeclaration}.map {$0 as! ChildDeclaration}
  let mixins = inputs.filter {$0 is Mixin}.map {$0 as! Mixin}

  if !mixins.isEmpty {
    let moreprops = mixins.reduce(properties) {$0 + $1.properties}
    let morechildren = mixins.reduce(children) {$0 + $1.children}
    return (properties: moreprops, children: morechildren)
  }
  else {
    return (properties: properties, children: children)
  }
}
