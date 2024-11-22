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
      //  .binaryTarget(
        //    name: "SnapKit",
          //  path: "./SnapKit.xcframework"
        //),
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
        )
    ]
)
