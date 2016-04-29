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
}
