// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorUnityProxy",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorUnityProxy", targets: ["XMediatorUnityProxyTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", "1.168.2"..<"2.0.0"),
    ],
    targets: [
        .target(
            name: "XMediatorUnityProxyTarget",
            dependencies: [
                .target(name: "XMediatorUnityProxy"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
            ],
            path: "XMediatorUnityProxyTarget",
            linkerSettings: []
        ),
        .binaryTarget(
            name: "XMediatorUnityProxy",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorUnityProxy/XMediatorUnityProxy-1.168.2.0.zip",
            checksum: "373cf630ea5b92aa0c05f0ca59f0bbbed62d8f35785147586f8e43929fb8a6d1"
        ),
    ]
)
