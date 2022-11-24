# TCA-SwiftLog

This package provides a simple wrapper around Logger  
It provides only Test implementation.
The Live implementation should be implemented by the consumer of this library

```
import Logging
import Dependencies

extension DependencyValues.LoggerKey: DependencyKey {
    public static let liveValue: Logger = Logger(label: "live.logger")
}
```
