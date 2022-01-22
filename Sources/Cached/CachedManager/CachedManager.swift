import Foundation

/// TODO
public final class CachedManager {

    // MARK: - Properties

    private let urlCacheHandler: URLCacheHandling

    // MARK: - Initialization

    /// TODO
    /// - Parameter urlCacheHandler: TODO
    public init(urlCacheHandler: URLCacheHandling) {
        self.urlCacheHandler = urlCacheHandler
    }
}

// MARK: - Methods

public extension CachedManager {

    /// TODO
    func storeToCache() async {

    }

    /// TODO
    func loadFromCache() async throws {

    }

    /// TODO
    func clearCache(since: Data) async {

    }

    /// TODO
    func clearAllCache() async {

    }
}
