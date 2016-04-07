import Uut
import XCTest

class MediaQueryTests: XCTestCase {
  func testSimple() {
    let query = not(MediaQueries.MinWidth(100.px) |& MediaQueries.Handheld()) || MediaQueries.TV()
    print(query.stringValue)
  }
}
