func classname(label: String, _ associated: Selector...) -> Selector {
  return Selector.Class(label, associated)
}

func id(label: String, _ associated: Selector...) -> Selector {
  return Selector.ID(label, associated)
}

func el(tag: String, _ associated: Selector...) -> Selector {
  return Selector.Element(tag, associated)
}

func firstChild(associated: Selector...) -> Selector {
  return Selector.FirstChild(associated)
}

func lastChild(associated: Selector...) -> Selector {
  return Selector.LastChild(associated)
}

func link(associated: Selector...) -> Selector {
  return Selector.Link(associated)
}

func visited(associated: Selector...) -> Selector {
  return Selector.Visited(associated)
}

func active(associated: Selector...) -> Selector {
  return Selector.Active(associated)
}

func hover(associated: Selector...) -> Selector {
  return Selector.Hover(associated)
}

func focus(associated: Selector...) -> Selector {
  return Selector.Focus(associated)
}

func attrEquals(label: String, _ value: String, associated: Selector...) -> Selector {
  return Selector.AttrEquals(label, value, associated)
}

func attrContains(label: String, _ value: String, associated: Selector...) -> Selector {
  return Selector.AttrContains(label, value, associated)
}

func all() -> Selector {
  return Selector.All
}
