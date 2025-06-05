// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LifeCellGridView",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LifeCellGridView",
            targets: ["LifeCellGridView"]),
    ],
    dependencies: [
        .package(path: "../ios-utils/Utils")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LifeCellGridView",
            dependencies: [
                "Utils"
            ]),
        .testTarget(
            name: "LifeCellGridViewTests",
            dependencies: ["LifeCellGridView"]
        ),
    ]
)
