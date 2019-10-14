# Prettier.swift

[![Version](https://img.shields.io/cocoapods/v/Prettier.swift.svg?style=flat)](https://cocoapods.org/pods/Prettier.swift)
[![License](https://img.shields.io/cocoapods/l/Prettier.swift.svg?style=flat)](https://cocoapods.org/pods/Prettier.swift)
[![Platform](https://img.shields.io/cocoapods/p/Prettier.swift.svg?style=flat)](https://cocoapods.org/pods/Prettier.swift)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

Prettier.swift is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Prettier.swift'
```

# How to use

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

## Author

Michael Henry Pantaleon, me@iamkel.net

## License

Prettier.swift is available under the MIT license. See the LICENSE file for more info.
