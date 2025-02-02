// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GRDB",
    platforms: [
      .iOS(.v9), .macOS(.v10_10), .watchOS(.v2), .tvOS(.v9),
    ],
    products: [
      .library(name: "GRDB", targets: ["GRDB"]),
    ],
     dependencies: [
      .package(url: "https://github.com/groue/CSQLite.git", from: "0.2.0"),
    ],
     targets: [
      .target(name: "GRDB", path: "GRDB"),
      .testTarget(
        name: "GRDBTests",
        dependencies: ["GRDB"],
        path: "Tests",
        exclude: [
          "CocoaPods",
          "Crash",
          "Performance",
          "SPM"
        ])
  ],
    swiftLanguageVersions: [.v4_2, .v5]
)
