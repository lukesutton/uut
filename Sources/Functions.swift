func style(selector: SelectorConvertible, _ inputs: BlockComponent...) -> Block {
  let extracted = extractInputs(inputs)

  return Block(
    mode: .Style,
    selector: selector.toSelector(),
    properties: extracted.properties,
    children: extracted.children,
    extensions: extracted.extensions
  )
}

func mixin(inputs: BlockComponent...) -> Mixin {
  let extracted = extractInputs(inputs)
  return Mixin(properties: extracted.properties, children: extracted.children)
}

func mixin(inputs: [BlockComponent]) -> Mixin {
  let extracted = extractInputs(inputs)
  return Mixin(properties: extracted.properties, children: extracted.children)
}

func extends(block: Block) -> Extension {
  return Extension(block: block)
}

private func extractInputs(inputs: [BlockComponent]) -> (properties: [Property], children: [Block], extensions: [Extension]) {
  // This should actually be done differently, since they should be processed
  // in order.
  let properties = inputs.filter {$0 is Property}.map {$0 as! Property}
  let children = inputs.filter {$0 is Block}.map {$0 as! Block}
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
