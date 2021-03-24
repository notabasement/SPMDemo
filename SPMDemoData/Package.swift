// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMDemoData",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SPMDemoData",
            targets: ["SPMDemoData"]),
    ],
    dependencies: [
        .package(path: "../SPMDemoDomain"),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .branch("5.1.1")),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("5.4.1")),
        .package(name: "Auth0", url: "https://github.com/auth0/Auth0.swift.git", .exact("1.31.1")),
        .package(url: "https://github.com/alickbass/CodableFirebase.git", .exact("0.2.2")),
        .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", .exact("7.8.1")),
        .package(url: "https://github.com/onevcat/Kingfisher.git", .exact("6.2.1")),
        .package(url: "https://github.com/notabasement/Moya.git", .revision("bc5a317a821c5b28c7c3bf83781fbd8dbca340f9")),
        .package(url: "https://github.com/tikhop/TPInAppReceipt.git", .exact("3.0.2")),
        .package(url: "https://github.com/notabasement/AWSAppSync.git", .revision("5163423e47c4eb50c4f89fda5bb8e5b692a191f7")),
        .package(url: "https://github.com/bizz84/SwiftyStoreKit.git", .exact("0.16.3")),
        .package(url: "https://github.com/Swinject/Swinject.git", .exact("2.7.1")),
        .package(url: "https://github.com/Swinject/SwinjectAutoregistration.git", .exact("2.7.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SPMDemoData",
            dependencies: ["SPMDemoDomain",
                           "CodableFirebase",
                           "Alamofire",
                           "Kingfisher",
                           "Moya",
                           "TPInAppReceipt",
                           "AWSAppSync",
                           "SwiftyStoreKit",
                           "Auth0",
                           "Swinject",
                           "SwinjectAutoregistration",
                           .product(name: "FirebaseAnalytics", package: "Firebase"),
                           .product(name: "FirebaseAuth", package: "Firebase"),
                           .product(name: "FirebaseCrashlytics", package: "Firebase"),
                           .product(name: "FirebaseDynamicLinks", package: "Firebase"),
                           .product(name: "FirebaseFirestore", package: "Firebase"),
                           .product(name: "FirebaseInAppMessaging-Beta", package: "Firebase"),
                           .product(name: "FirebaseMessaging", package: "Firebase"),
                           .product(name: "FirebaseRemoteConfig", package: "Firebase"),
                           .product(name: "FirebaseStorage", package: "Firebase"),
                           .product(name: "RxSwift", package: "RxSwift"),
                           .product(name: "RxRelay", package: "RxSwift")],
            path: "."),
    ]
)
