# Prettier.swift

[![Version](https://img.shields.io/cocoapods/v/Prettier.swift.svg?style=flat)](https://cocoapods.org/pods/Prettier.swift)
[![License](https://img.shields.io/cocoapods/l/Prettier.swift.svg?style=flat)](https://cocoapods.org/pods/Prettier.swift)
[![Platform](https://img.shields.io/cocoapods/p/Prettier.swift.svg?style=flat)](https://cocoapods.org/pods/Prettier.swift)
[![codecov](https://codecov.io/gh/michaelhenry/Prettier.swift/branch/master/graph/badge.svg?token=CE1AKGDJ4K)](https://codecov.io/gh/michaelhenry/Prettier.swift)

[Prettier.io](https://prettier.io/) wrapper for swift. An opinionated code formatter.


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

Prettier.swift is available via SPM or Cocoapods.

```ruby
pod 'Prettier.swift'
```

# How to use

### JSON
```swift
import Prettier_swift

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
```

### HTML
```swift
import Prettier_swift

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
```

### GRAPHQL
```swift
import Prettier_swift

let prettier = Prettier()
let input = "{human(id:\"1000\"){name height}}"
let output = prettier.prettify(input, parser: .graphql)

let expected_output =
"""
{
  human(id: "1000") {
    name
    height
  }
}

"""
XCTAssertEqual(output, expected_output)
```
### AND MORE!


## License

Prettier.swift is available under the MIT license. See the LICENSE file for more info.
