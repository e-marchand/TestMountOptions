// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "volcheck",
    products: [
        .executable(
            name: "volcheck",
            targets: ["volcheck"])
    ],
    dependencies: [
    ],
    targets: [
        .executableTarget(
            name: "volcheck",
            path: "Sources/"
        )
    ]
)


