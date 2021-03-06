// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftFFmpeg",
    products: [
        .library(
            name: "SwiftFFmpeg",
            targets: ["SwiftFFmpeg"]
        ),
        .executable(
            name: "Demo",
            targets: ["Demo"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/sunlubo/CFFmpeg.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "SwiftFFmpeg"
        ),
        .target(
            name: "Demo",
            dependencies: ["SwiftFFmpeg"]
        ),
        .testTarget(
            name: "SwiftFFmpegTests",
            dependencies: ["SwiftFFmpeg"]
        )
    ]
)
