import Foundation

extension Foundation.Bundle {
    static let module: Bundle = {
        let mainPath = Bundle.main.bundleURL.appendingPathComponent("BaseModule_BaseModule.bundle").path
        let buildPath = "/Users/erfand/my Pojects/Extra Projects/ErfanApp/ErfanApp/Modules/BaseModule/.build/arm64-apple-macosx/debug/BaseModule_BaseModule.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle ?? Bundle(path: buildPath) else {
            // Users can write a function called fatalError themselves, we should be resilient against that.
            Swift.fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}