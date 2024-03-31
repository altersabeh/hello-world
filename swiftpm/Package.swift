// swift-tools-version: 5.10

import PackageDescription

let package = Package(
  name: "swift-hello",
  products: [
    .executable(
      name: "swift-hello",
      targets: ["App"]
    )
  ],
  dependencies: [
    // .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.53.5"),
    // .package(url: "https://github.com/realm/SwiftLint.git", from: "0.54.0"),
    .package(url: "https://github.com/attaswift/BigInt.git", branch: "master"),
  ],
  targets: [
    .executableTarget(
      name: "App",
      dependencies: [
        "HelloWorld",
        "NumbersLib",
      ],
      path: "Sources/App"
    ),
    .target(
      name: "HelloWorld",
      path: "Sources/HelloWorld"
    ),
    .target(
      name: "NumbersLib",
      dependencies: ["BigInt"],
      path: "Sources/NumbersLib"
    ),
    .testTarget(
      name: "HelloWorldTests",
      dependencies: ["HelloWorld"],
      path: "Tests/HelloWorldTests"
    ),
    .testTarget(
      name: "NumbersLibTests",
      dependencies: ["NumbersLib"],
      path: "Tests/NumbersLibTests"
    ),
  ]
)
