import Uut
import XCTest

class StyleTests: XCTestCase {
  func testBasicStyle() {
    let header = Style(Selectors.Class("header"),
      Properties.BackgroundImage("red")
    )

    XCTAssertEqual(header.stringValue, ".header { background-image: red; }")
  }

  func testSubStyle() {
    let parent = Style(Selectors.Class("header"),
      Properties.BackgroundImage("red"),

      Style(Selectors.Class("nav"),
        Properties.BackgroundImage("red")
      )
    )

    XCTAssertEqual(parent.stringValue, ".header { background-image: red; } .header .nav { background-image: red; }")
  }
}
