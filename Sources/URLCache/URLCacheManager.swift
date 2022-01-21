import Foundation

actor URLCacheManager {
    private let urlCache = URLCache.shared

    public init() {}
}

extension URLCacheManager: URLCacheManagerType {

    func storeDataToCache(cachedResponse: CachedURLResponse, for request: URLRequest) async {
        urlCache.storeCachedResponse(cachedResponse, for: request)
    }

    func loadCachedData(for request: URLRequest) async throws -> Data {
        let data = urlCache.cachedResponse(for: request)?.data

        guard
            let data = data,
            !data.isEmpty
        else {
            throw URLCacheManagerError.invalidCachedData
        }

        return data
    }

    func dataIsCached(for request: URLRequest) async -> Bool {
        urlCache.cachedResponse(for: request) != nil
    }

    func clearCachedData(for request: URLRequest) async {
        urlCache.removeCachedResponse(for: request)
    }

    func clearCacheData(for dataTask: URLSessionDataTask) async {
        urlCache.removeCachedResponse(for: dataTask)
    }

    func clearAllCachedData() async {
        urlCache.removeAllCachedResponses()
    }
}
