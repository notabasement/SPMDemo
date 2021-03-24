// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMDemoPresenter",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SPMDemoPresenter",
            targets: ["SPMDemoPresenter"]),
    ],
    dependencies: [
        .package(path: "../SPMDemoDomain"),
        .package(url: "https://github.com/Swinject/Swinject.git", .exact("2.7.1")),
        .package(url: "https://github.com/Swinject/SwinjectAutoregistration.git", .exact("2.7.0")),
        .package(url: "https://github.com/notabasement/XCoordinator.git", .revision("b5d8f314f96fddd16b0f7ff65e8a257689d3b98b")),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .branch("5.1.1")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SPMDemoPresenter",
            dependencies: ["SPMDemoDomain",
                           "Swinject",
                           "SwinjectAutoregistration",
                           "XCoordinator",
                           .product(name: "RxSwift", package: "RxSwift"),
                           .product(name: "RxRelay", package: "RxSwift"),
                           .product(name: "RxCocoa", package: "RxSwift")],
            path: ".")
    ]
)
