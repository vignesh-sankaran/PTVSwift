// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "PTVSwift",
    platforms: [
        .macOS(.v10_15), .iOS(.v12),
    ],
    products: [
        .library(
            name: "PTVSwift",
            targets: ["PTVSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0-rc.2")
    ],
    targets: [
        .target(
            name: "PTVSwift",
            dependencies: ["Alamofire"]),
        .testTarget(
            name: "PTVSwiftTests",
            dependencies: ["PTVSwift"]),
    ]
)
