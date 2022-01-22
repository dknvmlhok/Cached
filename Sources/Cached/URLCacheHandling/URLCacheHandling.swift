import Foundation

/// TODO
public protocol URLCacheHandling {

    /// TODO
    /// - Parameters:
    ///   - cachedResponse: TODO
    ///   - request: TODO
    func storeDataToCache(cachedResponse: CachedURLResponse, for request: URLRequest) async

    /// TODO
    /// - Parameters:
    ///   - request: TODO
    /// - Returns: TODO
    func loadCachedData(for request: URLRequest) async throws -> Data

    /// TODO
    /// - Parameters:
    ///   - request: TODO
    /// - Returns: TODO
    func dataIsCached(for request: URLRequest) async -> Bool

    /// TODO
    /// - Parameters:
    ///   - request: TODO
    func clearCachedData(for request: URLRequest) async

    /// TODO
    /// - Parameters:
    ///   - dataTask: TODO
    func clearCacheData(for dataTask: URLSessionDataTask) async


    /// TODO
    func clearAllCachedData() async
}
