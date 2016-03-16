protocol Declaration {
  var selector: Selector { get }
  var properties: [Property] { get }
  var children: [ChildDeclaration] { get }
}

protocol DeclarationChild {

}
struct BaseDeclaration: Declaration {
  let selector: Selector
  let properties: [Property]
  let children: [ChildDeclaration]
  let extensions: [Extension]

  internal func toChild() -> ChildDeclaration {
    return ChildDeclaration(
      selector: self.selector,
      properties: self.properties,
      children: self.children
    )
  }
}

struct ChildDeclaration: Declaration, DeclarationChild {
  let selector: Selector
  let properties: [Property]
  let children: [ChildDeclaration]
}

struct Modifier: Declaration, DeclarationChild {
  let selector: Selector
  let properties: [Property]
  let children: [ChildDeclaration]
}

struct Extension: DeclarationChild {
  let declaration: BaseDeclaration
}
