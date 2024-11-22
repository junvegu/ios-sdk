// swift-tools-version:5.7
import PackageDescription

import PackageDescription

let package = Package(
    name: "LyraPaymentSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "LyraPaymentSDK",
            targets: ["LyraPaymentSDKWrapper"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "LyraPaymentSDK",
            path: "./LyraPaymentSDK.xcframework"
        ),
        .binaryTarget(
            name: "Sentry",
            path: "./Sentry.xcframework"
        ),
        .binaryTarget(
            name: "SnapKit",
            path: "./SnapKit.xcframework"
        ),
        .binaryTarget(
            name: "LyraMaterial",
            path: "./LyraMaterial.xcframework"
        ),
        .binaryTarget(
            name: "LyraMotion",
            path: "./LyraMotion.xcframework"
        ),
        .binaryTarget(
            name: "LyraCardsRecognizer",
            path: "./LyraCardsRecognizer.xcframework"
        ),
        .binaryTarget(
            name: "sentry_client_cocoa",
            path: "./sentry_client_cocoa.xcframework"
        ),
        .target(
            name: "LyraPaymentSDKWrapper",
            dependencies: [
                .target(name: "LyraPaymentSDK"),
                .target(name: "Sentry"),
                .target(name: "LyraMaterial"),
                .target(name: "LyraMotion"),
                .target(name: "LyraCardsRecognizer"),
                .target(name: "SnapKit"),
                .target(name: "sentry_client_cocoa")
            ],
            path: "./Sources",
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("UIKit")
            ]
        )
    ]
)
