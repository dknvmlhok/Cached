import Foundation

public enum URLCacheManagerError: Error, LocalizedError {
    case invalidCachedData

    var errorDescription: String {
        switch self {
        case .invalidCachedData:
            return "Invalid cached data"
        }
    }
}
