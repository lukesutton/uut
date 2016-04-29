import Uut
import XCTest
typealias m = Uut.MediaQueries

class TestQueries: XCTestCase {
  let compiler = Compiler()

  func testStyleYanking() {
    let query = m.screen |& m.maxWidth(600.px)

    let styles = [
      style(s.id("herp"),
        border(1.px, .Solid, .Red),
        width(50.percent)
      ),
      style(query, s.id("derp"),
        width(100.percent)
      ),
      style(s.id("derp"),
        border(1.px, .Solid, .Black),
        width(50.percent)
      )
    ]

    let expected = multiline(
      ".herp {",
      "  border 1px solid red;",
      "  width: 50%;",
      "}",
      ".derp {",
      "  border: 1px solid black;",
      "  width: 50%;",
      "}",
      "@media screen and (max-width: 600px) {",
      "  .derp {",
      "    width: 100%;",
      "  }",
      "}"
    )

    XCTAssertEqual(compiler.compile(styles), expected)
  }

  func testNot() {
    let query = m.not(m.screen |& m.maxHeight(400.em))
    XCTAssertEqual(query.stringValue, "not screen and (max-height: 400em)")
  }

  func testAnd() {
    let query = m.handheld |& m.minWidth(600.px) |& m.maxWidth(800.px)
    XCTAssertEqual(query.stringValue, "handheld and (min-width: 600px) and (max-width: 800px)")
  }

  func testOr() {
    let query = m.handheld || m.screen
    XCTAssertEqual(query.stringValue, "handheld , screen")
  }

  func testComplicated() {
    let query = m.handheld |& m.minWidth(500.px) || m.screen |& m.minWidth(1200.px) |& m.maxWidth(2000.px)
    XCTAssertEqual(query.stringValue, "handheld and (min-width: 500px) , screen and (min-width: 1200px) and (max-width: 2000px)")
  }
}
