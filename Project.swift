import ProjectDescription

let project = Project(
    name: "SwiftUIExt",
    targets: [
        .target(
            name: "SwiftUIExt",
            destinations: [.iPhone, .iPad, .mac],
            product: .framework,
            bundleId: "SwiftUIExt",
            deploymentTargets: .multiplatform(iOS: "16.0", macOS: "13.0"),
            sources: ["Sources/**"]
        )
    ]
)
