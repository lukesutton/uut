import Uut
import XCTest

class StylePackageTests: XCTestCase {
  func testBasic() {
    let header = Style(Selectors.Class("header"),
      Properties.BackgroundImage(.URL("red"))
    )

    let nav = Style(Selectors.Class("nav"),
      Properties.BackgroundImage(.URL("blue"))
    )

    let package = StylePackage(selector: Selectors.ID("admin"),
      header,
      nav
    )

    let result = "#admin .header { background-image: url(\"red\"); } #admin .nav { background-image: url(\"blue\"); }"

    XCTAssertEqual(package.render(), result)
  }
}
