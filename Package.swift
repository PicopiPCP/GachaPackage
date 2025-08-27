// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Gacha",
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
