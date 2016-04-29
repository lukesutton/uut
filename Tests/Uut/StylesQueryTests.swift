import Uut
import XCTest

class StylesQueryTests: XCTestCase {
  let collection = IntermediateCollection([
    IntermediateStyle(style: style(s.classname("foo"),
      backgroundColor(.Black)
    )),
    IntermediateStyle(style: style(s.classname("header") |- s.classname("nav"),
      border(2.px, .Solid, .Black)
    )),
    IntermediateStyle(style: style(s.classname("login"),
      border(2.px, .Solid, .Black)
    )),
    IntermediateStyle(style: style(s.id("login-form") |- s.classname("input"),
      float(.Left)
    )),
    IntermediateStyle(style: style(s.id("login-form") |- s.classname("button"),
      float(.Right)
    )),
    IntermediateStyle(style: style(s.id("login-form") |- s.classname("controls"),
      width(100.percent),
      float(.Left)
    ))
  ])

  func testMatchByProperty() {
    let query = StylesQuery.hasProperty("border")
    let matches = collection.keepMatches(query)
    XCTAssertEqual(matches.count, 2)
  }

  func testMatchBySelector() {
    let selector = s.classname("header") |- s.classname("nav")
    let query = StylesQuery.hasSelector(match: selector)
    let matches = collection.keepMatches(query)
    XCTAssertEqual(matches.count, 1)
    if let first = matches[0] {
      XCTAssertEqual(first.selector, selector)
    }
  }

  func testMatchBySelectorPrefix() {
    let query = StylesQuery.hasSelector(prefix: s.id("login-form"))
    let matches = collection.keepMatches(query)
    XCTAssertEqual(matches.count, 3)
  }

  func testMatchBySelectorSuffix() {
    let query = StylesQuery.hasSelector(suffix: s.classname("nav"))
    let matches = collection.keepMatches(query)
    XCTAssertEqual(matches.count, 1)
  }
}
