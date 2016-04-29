import Uut
import XCTest

class MixinTests: XCTestCase {
  let compiler = Compiler()

  func testBasicMixin() {
    let basic = styleMixin(
      color(.Red)
    )

    let target = style(s.classname("basic"),
      mixesIn(basic)
    )

    let expected = multiline(
      ".basic {",
      "  color: red;",
      "}"
    )

    XCTAssertEqual(compiler.compile(target), expected)
  }

  func testMixinWithChild() {
    let withChild = styleMixin(
      border(1.px, .Solid, .Inherit),
      style(s.classname("child"),
        fontSize(2.em)
      )
    )

    let target = style(s.classname("parent"),
      mixesIn(withChild)
    )

    let expected = multiline(
      ".parent {",
      "  border: 1px solid inherit;",
      "}",
      ".parent .child {",
      "  font-size: 2em;",
      "}"
    )

    XCTAssertEqual(compiler.compile(target), expected)
  }
}
