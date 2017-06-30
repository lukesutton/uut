import Uut
import XCTest

class SimpleTests: XCTestCase {
  func testBasicStyle() {
    let rule = Rule(
      description: "A test rule",
      selector: .id("what"),
      properties: [
        .marginLeft(1.em),
        .borderStyle(.solid),
        .borderWidth(1.px),
        .borderColor(.keyword(.red))
      ]
    )

    print(rule.render())
  }
}
