// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NewProjectSetup",
    platforms: [.iOS("18.0")],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Root",
            targets: ["Root"]),
    ],
    dependencies: [.package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "1.14.0"),],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Root",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
            ]
        ),
        .testTarget(
            name: "RootTests",
            dependencies: ["Root"]
        ),
    ]
)
