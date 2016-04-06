import Uut
import XCTest

class SelectorTests: XCTestCase {
  func testDecendent() {
    let selector = Selectors.ID("what") |- Selectors.Class("ok")
    XCTAssertEqual(selector.stringValue, "#what .ok")
  }

  func testPreceding() {
    let selector = Selectors.ID("what") |+ Selectors.Class("ok")
    XCTAssertEqual(selector.stringValue, "#what + .ok")
  }

  func testFollowing() {
    let selector = Selectors.ID("what") |~ Selectors.Class("ok")
    XCTAssertEqual(selector.stringValue, "#what ~ .ok")
  }

  func testChild() {
    let selector = Selectors.ID("what") |> Selectors.Class("ok")
    XCTAssertEqual(selector.stringValue, "#what > .ok")
  }

  func testSelectorsClass () {
    let selector = Selectors.Class("ok")
    XCTAssertEqual(selector.stringValue, ".ok")
  }

  func testSelectorsID () {
    let selector = Selectors.ID("ok")
    XCTAssertEqual(selector.stringValue, "#ok")
  }

  func testElement() {
    let selector = Selectors.El("h1")
    XCTAssertEqual(selector.stringValue, "h1")
  }

  func testFirstChild() {
    let selector = Selectors.FirstChild()
    XCTAssertEqual(selector.stringValue, ":first-child")
  }

  func testCompoundSelectors() {
    let first = Selectors.El("div", Selectors.FirstChild())
    XCTAssertEqual(first.stringValue, "div:first-child")

    let second = Selectors.El("div", Selectors.AttrContains("data-id", "what"))
    XCTAssertEqual(second.stringValue, "div[data-equals~=\"what\"]")
  }
}
