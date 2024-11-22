
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
            targets: ["LyraPaymentSDKDependencies"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.7.1"),
        .package(url: "https://github.com/getsentry/sentry-cocoa.git", from: "8.36.0"),
        .package(url: "https://github.com/junvegu/sentry-client-cocoa.git", branch: "master"),
        .package(url: "https://github.com/junvegu/LyraMaterial.git", branch: "development"),
        .package(url: "https://github.com/junvegu/LyraMotion.git", from: "4.1.0"),
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
                .target(name: "LyraPaymentSDK"),
                .product(name: "SnapKit", package: "SnapKit"),
                .product(name: "Sentry", package: "sentry-cocoa"),
                .product(name: "sentry_client_cocoa", package: "sentry-client-cocoa"),
                .product(name: "LyraMaterial", package: "LyraMaterial"), // Correcto
                .product(name: "LyraMotion", package: "LyraMotion"),
                .product(name: "LyraCardsRecognizer", package: "ios-cards-camera-recognizer")
            ],
            path: "Sources/LyraPaymentSDKDependencies"
        )
    ]
)
