import Foundation

public enum CachedManagerError: Error, LocalizedError {
    case urlCacheError(URLCacheHandlerError)

    public var errorDescription: String {
        switch self {
        case .urlCacheError(let error):
            return "URLCache error: \(error.errorDescription)"
        }
    }
}
