// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Network",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Network",
            targets: ["Network"]),
    ],
    dependencies: [
         .package(url: "https://github.com/Alamofire/Alamofire", from: "4.9.1"),
         .package(url: "https://github.com/SDWebImage/SDWebImage", from: "5.5.2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Network",
            dependencies: [.product(name: "Alamofire"), .product(name: "SDWebImage")]),
        .testTarget(
            name: "NetworkTests",
            dependencies: ["Network"]),
    ]
)
