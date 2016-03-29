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

    let styles = [
      Style(Selectors.Class("articles"),
        Properties.BackgroundColor(.Color(.Black)),

        Style(Selectors.Class("article"),
          Properties.BackgroundColor(.Color(.White))
        )
      )
    ]

    let compiler = Compiler(intermediate: [double])
    let result = compiler.compile(styles)
    print(result)
  }
}
