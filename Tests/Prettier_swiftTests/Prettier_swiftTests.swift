import XCTest
@testable import Prettier_swift

final class Prettier_swiftTests: XCTestCase {

    func testJson() {
        let prettier = Prettier()
        let input = "{\"id\":1,\"name\":\"Michael Henry\"}"
        let output = prettier.prettify(input, parser: .jsonStringify)!
        let expected_output =
        """
{
  "id": 1,
  "name": "Michael Henry"
}

"""
        XCTAssertEqual(output, expected_output)
    }

    func testHtml() {
        let prettier = Prettier()
        let input = "<html><body><p>hello</p></body></html>"
        let output = prettier.prettify(input, parser: .html)!
        let expected_output =
        """
<html>
  <body>
    <p>hello</p>
  </body>
</html>

"""
        XCTAssertEqual(output, expected_output)
    }

    func testCss() {
        let prettier = Prettier()
        let input = "body { background: #ffffff; }"
        let output = prettier.prettify(input, parser: .css)!
        let expected_output =
        """
body {
  background: #ffffff;
}

"""
        XCTAssertEqual(output, expected_output)
    }
}
