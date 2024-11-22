
// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "LyraPaymentSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "LyraPaymentSDK",
            targets: ["LyraPaymentSDK"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.7.1"),
        .package(url: "https://github.com/getsentry/sentry-cocoa.git", from: "8.36.0"),
        .package(url: "https://github.com/junvegu/sentry-client-cocoa.git", from: "4.0.2"),
        .package(url: "https://github.com/junvegu/Material.git", from: "1.1.0"),
        .package(url: "https://github.com/junvegu/Motion.git", from: "4.1.0"),
        .package(url: "https://github.com/junvegu/ios-cards-camera-recognizer.git", from: "1.1.0")
    ],
    targets: [
        .binaryTarget(
            name: "LyraPaymentSDK",
            path: "./LyraPaymentSDK.xcframework"
        ),
        .target(
            name: "LyraPaymentSDKDependencies",
            dependencies: [
                "SnapKit",
                "Sentry",
                "sentry-client-cocoa",
                "Material",
                "Motion",
                "ios-cards-camera-recognizer"
            ],
            path: "./Dummy"
        )
    ]
)
