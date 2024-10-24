// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "trs-system",
    platforms: [
        .macOS(.v14),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "trs-system",
            targets: ["trs-system"]),
    ],
    dependencies: [
        
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "trs-system",
            resources: [
                .process("sound/audio_files"),
                .process("styles/fonts/custom_fonts"),
            ]),
        
        .testTarget(
            name: "trs-system-snapshot",
            dependencies: ["trs-system"])
    ]
)
