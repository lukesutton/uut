import Uut
import XCTest

class CompilerTests: XCTestCase {
  func testProperties() {
    func double(styles: IntermediateCollection) -> IntermediateCollection {
      let query = StylesQuery.hasProperty(Properties.BackgroundColor.self)

      return styles.transformMatches(query) { style in
        return style.addValueForProperty(Properties.BackgroundColor.self) { prop in
          return prop.canonicalPair
        }
      }
    }

    func removeProperty(property: Property.Type) -> (IntermediateCollection -> IntermediateCollection) {
      func remove(styles: IntermediateCollection) -> IntermediateCollection {
        let query = StylesQuery.hasProperty(property)
        return styles.transformMatches(query) { $0.removeProperty(property)}
      }

      return remove
    }

    let black = Values.Color(0, 0, 0)

    let ext = StyleExtension(
      Properties.Bottom(0.em)
    )

    let query = MediaQueries.Width(600.px)

    let styles = [
      Style(
        Selectors.Class("what"),
        query: query,
        Properties.Width(100.percent)
      ),

      Style(
        Selectors.Class("what"),
        extensions: [ext]
      ),

      Style(
        Selectors.Class("articles"),
        extensions: [ext],
        Properties.BackgroundColor(black),

        Style(
          Selectors.Class("article"),
          Properties.BorderStyle(.Solid),
          Properties.BackgroundColor(.Color(black))
        )
      )
    ]

    let compiler = Compiler(intermediate: [double])
    let result = compiler.compile(styles)
    print(result)
  }
}
