import Uut
import XCTest

class CompilerTests: XCTestCase {
  func testProperties() {
    func double(styles: IntermediateCollection) -> IntermediateCollection {
      let query = StylesQuery.hasProperty(Properties.BackgroundColor.self)

      return styles.forMatch(query) { style in
        return style.addValueForProperty(Properties.BackgroundColor.self) { prop in
          return prop.canonicalPair
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
          Properties.BorderStyle(.Solid),
          Properties.BackgroundColor(.Color(.Black))
        )
      )
    ]

    let compiler = Compiler(intermediate: [double])
    let result = compiler.compile(styles)
    print(result)
  }
}
