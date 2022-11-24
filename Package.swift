// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "TCA-SwiftLog",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .macOS(.v11),
        .watchOS(.v6),
    ],
    products: [
        .library(
            name: "TCA-SwiftLog",
            targets: [
                "TCA-SwiftLog"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-log.git",
            from: "1.0.0"
        ),
        .package(
            url: "https://github.com/pointfreeco/swift-composable-architecture",
            from: "0.45.0"
        ),
    ],
    targets: [
        .target(
            name: "TCA-SwiftLog",
            dependencies: [
                .product(
                    name: "Logging",
                    package: "swift-log"
                ),
                .product(
                    name: "Dependencies",
                    package: "swift-composable-architecture"
                ),
            ]
        ),
    ]
)
