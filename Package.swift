// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Toast",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(
            name: "Toast",
            targets: ["Toast"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sunghyun-k/swiftui-window-overlay.git", from: "1.0.1"),
    ],
    targets: [
        .target(
            name: "Toast",
            dependencies: [
                .product(name: "WindowOverlay", package: "swiftui-window-overlay"),
            ]
        ),
        .testTarget(
            name: "ToastTests",
            dependencies: ["Toast"]
        ),
    ]
)
