import Uut
import XCTest

class MixinTests: XCTestCase {
  func testProperties() {
    let list = Style(Selectors.ID("list"),
      Mixin(
        Properties.BackgroundImage("blue")
      )
    )

    XCTAssertEqual(list.stringValue, "#list { background-image: blue; }")
  }

  func testChildren() {
    let list = Style(Selectors.ID("list"),
      Style(Selectors.Class("entry"),
        Properties.BackgroundImage("blue")
      )
    )

    XCTAssertEqual(list.stringValue, "#list .entry { background-image: blue; }")
  }
}
