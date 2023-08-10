// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  platforms: [.iOS(.v12), .macOS(.v12), .macCatalyst(.v13), .tvOS(.v16)],
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
        url: "https://github.com/xiguagua/Tun2SocksKit/releases/download/1.0.0/HevSocks5Tunnel.xcframework.zip",
        checksum: "7b5c2f89c1d68322752881f52826aefee8076a9148ee35cc1aa4e23185b27c1d"
    )
  ]
)
