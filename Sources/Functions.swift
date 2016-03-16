func style(selector: SelectorConvertible, _ inputs: DeclarationChild...) -> BaseDeclaration {
  let extracted = extractInputs(inputs)

  return BaseDeclaration(
    selector: selector.toSelector(),
    properties: extracted.properties,
    children: extracted.children,
    extensions: extracted.extensions
  )
}

func child(selector: SelectorConvertible, _ inputs: DeclarationChild...) -> ChildDeclaration {
  let extracted = extractInputs(inputs)

  return ChildDeclaration(
    selector: selector.toSelector(),
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

func extends(declaration: BaseDeclaration) -> Extension {
  return Extension(declaration: declaration)
}

func builder(selector: SelectorConvertible, config: (BlockBuilder -> Void)) -> BaseDeclaration {
  let blockBuilder = BlockBuilder(selector: selector.toSelector())
  config(blockBuilder)
  return blockBuilder.toDeclaration()
}

private func extractInputs(inputs: [DeclarationChild]) -> (properties: [Property], children: [ChildDeclaration], extensions: [Extension]) {
  // This should actually be done differently, since they should be processed
  // in order.
  let properties = inputs.filter {$0 is Property}.map {$0 as! Property}
  let children = inputs.filter {$0 is ChildDeclaration}.map {$0 as! ChildDeclaration}
  let extensions = inputs.filter {$0 is Extension}.map {$0 as! Extension}
  let mixins = inputs.filter {$0 is Mixin}.map {$0 as! Mixin}

  if !mixins.isEmpty {
    let moreprops = mixins.reduce(properties) {$0 + $1.properties}
    let morechildren = mixins.reduce(children) {$0 + $1.children}
    return (properties: moreprops, children: morechildren, extensions: extensions)
  }
  else {
    return (properties: properties, children: children, extensions: extensions)
  }
}
