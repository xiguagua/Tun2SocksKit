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
        url: "https://github.com/xiguagua/Tun2SocksKit/releases/download/1.1.0/HevSocks5Tunnel.xcframework.zip",
        checksum: "fcb1a57a6df6dce32d16348829faed82270e48fd70b6b1b5b44a0cb5ba442a25"
    )
  ]
)
