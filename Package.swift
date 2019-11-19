// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "PTVSwift",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .watchOS(.v5)
    ],
    products: [
        .library(
            name: "PTVSwift",
            targets: ["PTVSwift"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "PTVSwift",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "Unit",
            dependencies: ["PTVSwift"]),
        .testTarget(
            name: "Integration",
            dependencies: ["PTVSwift"]
        ),
    ]
)
