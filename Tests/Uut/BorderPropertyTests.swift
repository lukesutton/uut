import Uut
import XCTest

class BorderPropertyTests: XCTestCase {
  typealias P = Uut.Properties

  func testBorder() {
    let prop = P.Border(.Initial)

    XCTAssertEqual(prop.stringValue, "border: initial;")
  }

  func testBorderShortcut() {
    let prop = P.Border(width: .Thick, style: .Solid, color: .Color(.Red))

    XCTAssertEqual(prop.stringValue, "border: thick solid red;")
  }
}
