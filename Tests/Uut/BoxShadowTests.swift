import Uut
import XCTest

class BoxShadowTests: XCTestCase {
  typealias P = Uut.Properties

  func testSimple() {
    let shadow = PropertyValues.Shadow.Shadow(1.em, 1.em, nil, nil, nil)
    let prop = P.BoxShadow(shadow)

    XCTAssertEqual(prop.stringValue, "box-shadow: 1.0em 1.0em;")
  }

  func testTwoShadows() {
    let one = PropertyValues.Shadow.Shadow(1.em, 1.em, nil, nil, nil)
    let two = PropertyValues.Shadow.Shadow(1.em, 3.em, nil, nil, nil)
    let prop = P.BoxShadow(one, two)

    XCTAssertEqual(prop.stringValue, "box-shadow: 1.0em 1.0em, 1.0em 3.0em;")
  }
}
