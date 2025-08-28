// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "gacha",
    defaultLocalization: "ja",
    platforms: [
        .iOS(.v15)  // iPadのPlaygroundsが対応している最低バージョンに合わせて
    ],
    products: [
        .library(
            name: "gacha",
            targets: ["gacha"]),
    ],
    targets: [
        .target(
            name: "gacha",
            resources: [
                .process("Assets.xcassets"),
                .process("Base.lproj")
            ]),
    ]
)
