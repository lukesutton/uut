public enum MediaQueryOperators {
  public struct Not: MediaQueryOperator {
    let stringValue = "not"
  }

  public struct And: MediaQueryOperator {
    let stringValue = "and"
  }

  public struct Or: MediaQueryOperator {
    let stringValue = ","
  }
}
