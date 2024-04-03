import Foundation

public struct DiscogsSearchResponse: Codable {
    public var items: [DiscogsSearchResult]
    public var pagination: DiscogsPagination
    
    enum CodingKeys: String, CodingKey {
        case items = "results"
        case pagination
    }
}
