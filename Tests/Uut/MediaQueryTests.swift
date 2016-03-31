import Uut
import XCTest

class MediaQueryTests: XCTestCase {
  func testSimple() {
    let val = Values.Unit.Px(700)
    let query = not(MediaQueries.MinWidth(val) |& MediaQueries.Handheld()) || MediaQueries.TV()
    print(query.stringValue)
  }
}
