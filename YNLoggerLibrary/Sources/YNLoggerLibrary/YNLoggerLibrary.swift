import Foundation
import os

fileprivate var basicInfo: String {
    let fileName: String = (#file as NSString).lastPathComponent
    let function: String = #function
    let line: Int = #line
    return "\(fileName) > \(function) > L\(line)"
}

fileprivate let logger: Logger = {
    // https://developer.apple.com/documentation/os/logger/3551621-init
    return Logger(
        subsystem: Bundle.main.bundleIdentifier ?? "DefaultSubsystem",
        category: basicInfo
    )
}()

public func devLog(_ msg: String) {
    print("[\(basicInfo)] \(msg)")
}

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
