import Uut
import XCTest
typealias s = Selectors

class CompilerTests: XCTestCase {
  func testProperties() {
    let exampleMixin = styleMixin(
      position(.Absolute),
      left(1.em),
      top(1.em)
    )

    let testExtension = styleExtension(
      borderStyle(.Solid),
      borderWidth(1.px),
      borderColor(Values.Color(0, 0, 0))
    )

    let styles = [
      style(s.classname("what"),
        bottom(1.em),
        mixesIn(exampleMixin),
        extends(testExtension)
      )
    ]

    let compiler = Compiler()
    let result = compiler.compile(styles)
    print(result)
  }
}
