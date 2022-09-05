// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PackageWithXCframeworks",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PackageWithXCframeworks",
            targets: ["IronchipCommonsIos", "LBFraudSDKiOS"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
                     name: "IronchipCommonsIos",
                     url: "https://nexus6.kydom.net/repository/FrameworkA/IronchipCommonsIos/IronchipCommonsIos.xcframework.zip",
                    checksum: "3e2664c5c039cce1acbcac71a09e4cd6959ffe860eed956506849d4328299a92"),
        .binaryTarget(
                     name: "LBFraudSDKiOS",
                     url: "https://nexus6.kydom.net/repository/FrameworkA/LBFraudSDKiOS/LBFraudSDKiOS.xcframework.zip",
                     checksum: "adcb7b44b7b533e9c1b60f10c2a1d2e2c31dee71ef27dc1891d981eefbe8abaf")
    ]
)
