import Uut
import XCTest

class StylePackageTests: XCTestCase {
  func testBasic() {
    let header = Style(Selectors.Class("header"),
      Properties.BackgroundImage("red")
    )

    let nav = Style(Selectors.Class("header"),
      Properties.BackgroundImage("blue")
    )

    let package = StylePackage(selector: Selectors.ID("admin"),
      header,
      nav
    )

    let result = "#admin .header { background-image: red; } #admin .nav { background-image: red; }"

    XCTAssertEqual(package.compile(), result)
  }
}
