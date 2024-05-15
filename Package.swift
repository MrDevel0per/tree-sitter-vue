// swift-tools-version:5.3
import PackageDescription


let package = Package(
    name: "TreeSitter{LANG}",
    platforms: [.macOS(.v10_13), .iOS(.v11)],
    products: [
        .library(name: "TreeSitter{LANG}", targets: ["TreeSitter{LANG}"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitter{LANG}",
                path: ".",
                exclude: [
                    "binding.gyp",
                    "bindings",
                    "Cargo.toml",
                    "corpus",
                    "examples",
                    "grammar.js",
                    "LICENSE",
                    "Makefile",
                    "package.json",
                    "README.md",
                    "src/grammar.json",
                    "src/node-types.json",
                    "CHANGELOG.md",
                    "ThirdPartyNoticeText.txt",
                    "docs",
                    "scripts",
                    "tree-sitter",
                    "yarn.lock"
                ],
                sources: [
                    "src/parser.c",
                    "src/scanner.cc",
                ],
                resources: [
                    .copy("queries")
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")])
    ]
)
