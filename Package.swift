// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftDemangle",
    products: [
        .executable(name: "swift-demangle", targets: ["SwiftDemangle"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mattgallagher/CwlDemangle", .upToNextMinor(from: "0.1.0")),
        .package(url: "https://github.com/apple/swift-argument-parser", .upToNextMinor(from: "0.0.5"))
    ],
    targets: [
        .target(
            name: "SwiftDemangle",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "CwlDemangle", package: "CwlDemangle")
            ]
        ),
    ]
)
