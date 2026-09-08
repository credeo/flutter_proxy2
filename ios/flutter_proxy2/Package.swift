// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "flutter_proxy2",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(
            name: "flutter-proxy2",
            targets: ["flutter_proxy2"]
        )
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "flutter_proxy2",
            dependencies: [
                .product(
                    name: "FlutterFramework",
                    package: "FlutterFramework"
                )
            ],
            resources: [
                .process("PrivacyInfo.xcprivacy")
            ]
        )
    ]
)
