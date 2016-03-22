public struct SelectorOperators {
  private init() {}

  struct PrecedingSibling: SelectorOperator {
    let stringValue = "+"
  }

  struct FollowingSibling: SelectorOperator {
    let stringValue = "~"
  }

  struct All: SelectorOperator {
    let stringValue = "*"
  }

  struct Child: SelectorOperator {
    let stringValue = ">"
  }

  struct And: SelectorOperator {
    let stringValue = ","
  }
}
