// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SparrowsVolleyballApp",
    platforms: [
        .iOS(.v17),
        .macOS(.v13)
    ],
    products: [
        .executable(
            name: "SparrowsVolleyballApp",
            targets: ["SparrowsVolleyballApp"]
        )
    ],
    targets: [
        .executableTarget(
            name: "SparrowsVolleyballApp",
            path: "Sources"
        )
    ]
)
