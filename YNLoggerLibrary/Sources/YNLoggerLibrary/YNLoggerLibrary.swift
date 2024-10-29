import Foundation
import os

fileprivate let logger: Logger = {
    let fileName: String = (#file as NSString).lastPathComponent
    let function: String = #function
    let line: Int = #line
    let category: String = "\(fileName) \(function) L\(line)"

    // https://developer.apple.com/documentation/os/logger/3551621-init
    return Logger(
        subsystem: Bundle.main.bundleIdentifier ?? "DefaultSubsystem",
        category: category
    )
}()

public func debugLog(_ msg: String) {
    logger.debug("\(msg)")
}

public func infoLog(_ msg: String) {
    logger.info("\(msg)")
}

public func warnLog(_ msg: String) {
    logger.warning("\(msg)")
}

public func errorLog(_ msg: String) {
    logger.error("\(msg)")
}
