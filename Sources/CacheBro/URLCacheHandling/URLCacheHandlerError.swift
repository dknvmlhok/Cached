import Foundation

public enum URLCacheHandlerError: Error, LocalizedError {
    case invalidCachedData

    public var errorDescription: String {
        switch self {
        case .invalidCachedData:
            return "Invalid cached data"
        }
    }
}
