@testable import Uut
import XCTest

class SelectorTests: XCTestCase {
  func widthMixin() -> Mixin {
    return mixin(Width("10em"))
  }

  func testDecendent() {
    let selector = id("what") |- classname("ok")
    XCTAssertEqual(selector.toString(), "#what .ok")
  }

  func testPreceding() {
    let selector = id("what") |+ classname("ok")
    XCTAssertEqual(selector.toString(), "#what + .ok")
  }

  func testFollowing() {
    let selector = id("what") |~ classname("ok")
    XCTAssertEqual(selector.toString(), "#what ~ .ok")
  }

  func testChild() {
    let selector = id("what") |> classname("ok")
    XCTAssertEqual(selector.toString(), "#what > .ok")
  }

  func testClassname() {
    let selector = classname("ok")
    XCTAssertEqual(selector.toString(), ".ok")
  }

  func testID() {
    let selector = id("ok")
    XCTAssertEqual(selector.toString(), "#ok")
  }

  func testElement() {
    let selector = el(.H1)
    XCTAssertEqual(selector.toString(), "h1")
  }

  func testCustomElement() {
    let selector = el(.Custom("derp"))
    XCTAssertEqual(selector.toString(), "derp")
  }

  func testFirstChild() {
    let selector = firstChild()
    XCTAssertEqual(selector.toString(), ":first-child")
  }
}
