// swift-tools-version: 5.10

import PackageDescription

let package = Package(
  name: "swift-hello",
  products: [
    .executable(
      name: "swift-hello",
      targets: ["HelloWorld"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.53.5")
  ],
  targets: [
    .executableTarget(
      name: "HelloWorld",
      path: "Sources/HelloWorld"
    ),
    .testTarget(
      name: "HelloWorldTests",
      dependencies: ["HelloWorld"],
      path: "Tests/HelloWorldTests"
    ),
  ]
)
