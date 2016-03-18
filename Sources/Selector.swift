public enum Selector {
  public typealias AssociatedSelectors = [Selector]

  case Class(String, AssociatedSelectors)
  case ID(String, AssociatedSelectors)
  case Element(ElementTag, AssociatedSelectors)
  case FirstChild(AssociatedSelectors)
  case LastChild(AssociatedSelectors)
  case Link(AssociatedSelectors)
  case Visited(AssociatedSelectors)
  case Active(AssociatedSelectors)
  case Hover(AssociatedSelectors)
  case Focus(AssociatedSelectors)
  case AttrEquals(String, String, AssociatedSelectors)
  case AttrContains(String, String, AssociatedSelectors)
  case All
}
