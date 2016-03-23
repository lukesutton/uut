import Uut
import XCTest

class StyleTests: XCTestCase {
  func testBasicStyle() {
    let header = Style(Selectors.Class("header"),
      Properties.BackgroundImage(.URL("red"))
    )

    XCTAssertEqual(header.stringValue, ".header { background-image: url(\"red\"); }")
  }

  func testSubStyle() {
    let parent = Style(Selectors.Class("header"),
      Properties.BackgroundImage(.URL("red")),

      Style(Selectors.Class("nav"),
        Properties.BackgroundImage(.URL("red"))
      )
    )

    XCTAssertEqual(parent.stringValue, ".header { background-image: url(\"red\"); } .header .nav { background-image: url(\"red\"); }")
  }
}
