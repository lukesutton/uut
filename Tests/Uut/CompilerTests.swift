import Uut
import XCTest

class CompilerTests: XCTestCase {
  func testProperties() {
    func double(styles: [IntermediateStyle]) -> [IntermediateStyle] {
      return styles.map {style in
        style.addPropertyValue(Properties.BackgroundColor.self) { prop in
          return prop.originalValue
        }
      }
    }

    let ext = StyleExtension(
      Properties.Bottom(.Unit(.Em(0)))
    )

    let styles = [
      Style(
        Selectors.Class("what"),
        extensions: [ext]
      ),

      Style(
        Selectors.Class("articles"),
        extensions: [ext],
        Properties.BackgroundColor(.Color(.Black)),
        Style(
          Selectors.Class("article"),
          Properties.BorderStyle(.Solid)
        )
      )
    ]

    let compiler = Compiler(intermediate: [double])
    let result = compiler.compile(styles)
    print(result)
  }
}
