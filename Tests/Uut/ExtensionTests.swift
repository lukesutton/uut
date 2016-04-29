import Uut
import XCTest

class ExtensionTests: XCTestCase {
  let compiler = Compiler()

  func testBasicExtension() {
    let basic = styleExtension(
      color(.Red)
    )

    let first = style(s.classname("first"),
      extends(basic),
      listStyleType(.None)
    )

    let second = style(s.classname("second"),
      extends(basic),
      textAlign(.Right)
    )

    let expected = multiline(
      ".first , .second {",
      "  color: red;",
      "}",
      ".first {",
      "  list-style-type: none;",
      "}",
      ".second {",
      "  text-align: right;",
      "}"
    )

    XCTAssertEqual(compiler.compile([first, second]), expected)
  }

  func testExtensionWithChildren() {
    let basic = styleExtension(
      color(.Red),
      style(s.classname("child"),
        color(.Green)
      )
    )

    let first = style(s.classname("first"),
      extends(basic),
      listStyleType(.None)
    )

    let second = style(s.classname("second"),
      extends(basic),
      textAlign(.Right)
    )

    let expected = multiline(
      ".first , .second {",
      "  color: red;",
      "}",
      ".first .child , .second .child {",
      "  color: green;",
      "}",
      ".first {",
      "  list-style-type: none;",
      "}",
      ".second {",
      "  text-align: right;",
      "}"
    )

    XCTAssertEqual(compiler.compile([first, second]), expected)
  }
}
