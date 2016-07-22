import PackageDescription

let package = Package(
    name: "RGBSemaphore",
    targets: [
        Target(name: "RGBSemaphore")
    ],
    dependencies: [
	.Package(url: "https://github.com/PureSwift/SwiftFoundation", majorVersion: 2)
    ],
    exclude: ["Xcode"]
)
