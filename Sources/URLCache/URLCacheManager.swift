import Foundation

public actor URLCacheManager {
    private let urlCache = URLCache.shared

    public init() {}
    
    public func storeDataToCache(cachedResponse: CachedURLResponse, for request: URLRequest) async {
        urlCache.storeCachedResponse(cachedResponse, for: request)
    }

    public func loadCachedData(for request: URLRequest) async throws -> Data {
        let data = urlCache.cachedResponse(for: request)?.data

        guard
            let data = data,
            !data.isEmpty
        else {
            throw URLCacheManagerError.invalidCachedData
        }
        
        return data
    }

    public func dataIsCached(for request: URLRequest) async -> Bool {
        urlCache.cachedResponse(for: request) != nil
    }

    public func clearCachedData(for request: URLRequest) async {
        urlCache.removeCachedResponse(for: request)
    }

    public func clearCacheData(for dataTask: URLSessionDataTask) async {
        urlCache.removeCachedResponse(for: dataTask)
    }

    public func clearAllCachedData() async {
        urlCache.removeAllCachedResponses()
    }
}
