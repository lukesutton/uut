import Uut
import XCTest

class MixinTests: XCTestCase {
  func testProperties() {
    let list = Style(Selectors.ID("list"),
      Mixin(
        Properties.BackgroundImage(.URL("red"))
      )
    )

    XCTAssertEqual(list.stringValue, "#list { background-image: url(\"red\"); }")
  }

  func testChildren() {
    let list = Style(Selectors.ID("list"),
      Style(Selectors.Class("entry"),
        Properties.BackgroundImage(.URL("blue"))
      )
    )

    XCTAssertEqual(list.stringValue, "#list .entry { background-image: url(\"blue\"); }")
  }
}
