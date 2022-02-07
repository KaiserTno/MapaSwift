import ProjectDescription

let workspace = Workspace(
    name: "MapWorkspace",
    projects: [
        "MapApp"
    ]//,
//    schemes: [
//        Scheme(
//            name: "MapApp",
//            shared: true,
//            buildAction: .buildAction(
//                targets: [.project(path: "MapApp", target: "MapApp")],
//                preActions: []
//            ),
//            testAction: .targets(
//                [TestableTarget(target: .project(path: "MapApp", target: "MapAppTests"))]
//            ),
//            runAction: .runAction(
//                executable: .project(path: "MapApp", target: "MapApp")
//            )
//        )
//    ],
//    generationOptions: [
//        .automaticSchemaGeneration(.disabled)
//    ]
)
