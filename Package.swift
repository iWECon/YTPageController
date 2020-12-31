// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YTPageController",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(name: "YTPageController", targets: ["YTPageController"]),
    ],
    targets: [
        .target(name: "YTPageController", dependencies: []),
        .testTarget(name: "YTPageControllerTests", dependencies: ["YTPageController"]),
    ]
)
