// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Prettier_swift",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Prettier_swift",
            targets: ["Prettier_swift"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Prettier_swift",
            dependencies: [],
            resources: [
              .copy("JS/standalone.js"),
              .copy("JS/parser-angular.js"),
              .copy("JS/parser-flow.js"),
              .copy("JS/parser-babylon.js"),
              .copy("JS/parser-glimmer.js"),
              .copy("JS/parser-graphql.js"),
              .copy("JS/parser-html.js"),
              .copy("JS/parser-markdown.js"),
              .copy("JS/parser-postcss.js"),
              .copy("JS/parser-typescript.js")
            ]),
        .testTarget(
            name: "Prettier_swiftTests",
            dependencies: ["Prettier_swift"]),
    ]
)
