// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorUnityProxy",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorUnityProxy", targets: ["XMediatorUnityProxyTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", "1.177.0"..<"2.0.0"),
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
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorUnityProxy/XMediatorUnityProxy-1.177.0.0.zip",
            checksum: "3575b66f5c285c2225e3e349828de847b7fa77646b9cb78a4369ff6f6b527906"
        ),
    ]
)
