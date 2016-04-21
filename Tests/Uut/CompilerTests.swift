import Uut
import XCTest
typealias s = Selectors
typealias q = MediaQueries

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

    // (min-width: 600px) and (max-width: 1200px)
    let query = q.minWidth(600.px) |& q.maxWidth(1200.px)

    let styles = [
      style(s.classname("what"),
        bottom(1.em),
        width(50.percent),
        mixesIn(exampleMixin),
        extends(testExtension)
      ),

      style(query, s.classname("what"),
        width(100.percent)
      ),

      style(query, s.classname("derp"),
        width(100.percent)
      )
    ]

    let compiler = Compiler()
    let result = compiler.compile(styles)
    print(result)
  }
}
