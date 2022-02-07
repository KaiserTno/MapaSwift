import ProjectDescription
import ProjectDescriptionHelpers

/*
                +-------------+
                |             |
                |     App     | Contains MapApp App target and MapApp unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project(
    name: "MapApp",
    organizationName: "tuist.io",
    targets: targets()
)

private func targets() -> [Target] {
    Project.makeAppTargets(
        name: "MapAppMacOS",
        platform: .macOS,
        dependencies: []
    )
    +
    Project.makeAppTargets(
        name: "MapAppiOS",
        platform: .iOS,
        dependencies: []
    )
}
