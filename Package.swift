// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "Gacha",
    defaultLocalization: "ja",
    platforms: [
        .iOS(.v15)  // iPadのPlaygroundsが対応している最低バージョンに合わせて
    ],
    products: [
        .library(
            name: "Gacha",
            targets: ["Gacha"]),
    ],
    targets: [
        .target(
            name: "Gacha",
            resources: [
                .process("Assets.xcassets"),
                .process("Base.lproj")
            ]),
    ]
)
