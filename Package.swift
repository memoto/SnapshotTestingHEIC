// swift-tools-version:6.0

import PackageDescription
import Foundation

let package = Package(
    name: "SnapshotTestingHEIC",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13)
    ],
    products: [
        .library(
            name: "SnapshotTestingHEIC",
            targets: ["SnapshotTestingHEIC"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/memoto/swift-snapshot-testing",
            from: "1.18.0"
        ),
    ],
    targets: [
        .target(
            name: "SnapshotTestingHEIC",
            dependencies: [
                .product(name: "SnapshotTesting",
                         package: "swift-snapshot-testing"),
            ]
        ),
        .testTarget(
            name: "SnapshotTestingHEICTests",
            dependencies: ["SnapshotTestingHEIC"],
            exclude: ["__Snapshots__"]
        ),
    ]
)
