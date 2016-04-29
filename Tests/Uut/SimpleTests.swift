import Uut
import XCTest
typealias s = Uut.Selectors

class SimpleTests: XCTestCase {
  let compiler = Compiler()

  func testBasicStyle() {
    let simple = style(s.classname("simple"),
      width(100.percent),
      boxSizing(.BorderBox),
      border(1.px, .Solid, .Black)
    )

    let expected = multiline(
      ".simple {",
      "  width: 100%;",
      "  box-sizing: border-box;",
      "  border: 1px solid black;",
      "}"
    )

    XCTAssertEqual(compiler.compile(simple), expected)
  }

  func testComplicatedSelector() {
    let simple = style(s.id("first", s.classname("second")) |> s.element("a", s.hover),
      height(10.em)
    )

    let expected = multiline(
      "#first.second > a:hover {",
      "  height: 10em;",
      "}"
    )

    XCTAssertEqual(compiler.compile(simple), expected)
  }
}

func multiline(strings: String...) -> String {
  return strings.joinWithSeparator("\r\n")
}
