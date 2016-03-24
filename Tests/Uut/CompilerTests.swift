import Uut
import XCTest

class CompilerTests: XCTestCase {
  func testProperties() {
    func double(styles: [IntermediateStyle]) -> [IntermediateStyle] {
      return styles.map {style in
        let props: [IntermediateProperty] = style.properties.map {prop in
          if let bg = prop.original as? Properties.BackgroundColor {
            return prop.add("background-color", withValue: "booo")
          }
          else {
            return prop
          }
        }

        return IntermediateStyle(selector: style.selector, properties: props)
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
