import Uut
import XCTest

class BorderPropertyTests: XCTestCase {
  typealias P = Uut.Properties

  func testBorder() {
    let prop = P.Border(.Initial)

    XCTAssertEqual(prop.stringValue, "border: initial;")
  }

  func testBorderShortcut() {
    let prop = P.Border(.Thick, .Solid, .Color(Values.Color(255, 0, 0)))

    XCTAssertEqual(prop.stringValue, "border: thick solid red;")
  }
}
