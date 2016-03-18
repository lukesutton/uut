public func classname(label: String, _ associated: Selector...) -> Selector {
  return Selector.Class(label, associated)
}

public func id(label: String, _ associated: Selector...) -> Selector {
  return Selector.ID(label, associated)
}

public func el(tag: ElementTag, _ associated: Selector...) -> Selector {
  return Selector.Element(tag, associated)
}

public func firstChild(associated: Selector...) -> Selector {
  return Selector.FirstChild(associated)
}

public func lastChild(associated: Selector...) -> Selector {
  return Selector.LastChild(associated)
}

public func link(associated: Selector...) -> Selector {
  return Selector.Link(associated)
}

public func visited(associated: Selector...) -> Selector {
  return Selector.Visited(associated)
}

public func active(associated: Selector...) -> Selector {
  return Selector.Active(associated)
}

public func hover(associated: Selector...) -> Selector {
  return Selector.Hover(associated)
}

public func focus(associated: Selector...) -> Selector {
  return Selector.Focus(associated)
}

public func attrEquals(label: String, _ value: String, associated: Selector...) -> Selector {
  return Selector.AttrEquals(label, value, associated)
}

public func attrContains(label: String, _ value: String, associated: Selector...) -> Selector {
  return Selector.AttrContains(label, value, associated)
}

public func all() -> Selector {
  return Selector.All
}
