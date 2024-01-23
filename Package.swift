// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  platforms: [.iOS(.v12), .macOS(.v12), .macCatalyst(.v13), .tvOS(.v16), .visionOS(.v1)],
  products: [
    .library(
        name: "Tun2SocksKit",
        targets: ["Tun2SocksKit"]
    )
  ],
  targets: [
    .target(
        name: "Tun2SocksKit",
        dependencies: ["Tun2SocksKitC", "HevSocks5Tunnel"]
    ),
    .target(
        name: "Tun2SocksKitC",
        publicHeadersPath: "."
    ),
    .binaryTarget(
        name: "HevSocks5Tunnel",
        url: "https://github.com/xiguagua/Tun2SocksKit/releases/download/1.2.1/HevSocks5Tunnel.xcframework.zip",
        checksum: "0e87b6b7a03bd8545a251bf2c538c4399c503ac3e5e141a4785b3bcab2631a56"
    )
  ]
)
