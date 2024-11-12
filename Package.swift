// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIExt",
    platforms: [.iOS(.v16), .macOS(.v13)],
    products: [
        .library(name: "SwiftUIExt", targets: ["SwiftUIExt"]),
    ],
    targets: [
        .target(
            name: "SwiftUIExt",
            path: "Sources"
        ),
    ]
)
