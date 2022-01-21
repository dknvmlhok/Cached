import Foundation

public protocol URLCacheManagerType {
    func storeDataToCache(cachedResponse: CachedURLResponse, for request: URLRequest) async
    func loadCachedData(for request: URLRequest) async throws -> Data
    func dataIsCached(for request: URLRequest) async -> Bool
    func clearCachedData(for request: URLRequest) async
    func clearCacheData(for dataTask: URLSessionDataTask) async
    func clearAllCachedData() async
}
