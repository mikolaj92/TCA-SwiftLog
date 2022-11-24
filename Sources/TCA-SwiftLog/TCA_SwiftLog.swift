import Dependencies
import Foundation
import Logging
import XCTestDynamicOverlay

public extension DependencyValues {
    var logger: Logger {
        get { self[LoggerKey.self] }
        set { self[LoggerKey.self] = newValue }
    }
    enum LoggerKey: TestDependencyKey {
        public static let testValue: Logger = Logger(label: "test.logger")
    }
}
