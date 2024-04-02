import Foundation

public struct DiscogsSearchResponse: Codable {
    var items: [DiscogsSearchResult]
    var pagination: DiscogsPagination
    
    enum CodingKeys: String, CodingKey {
        case items = "results"
        case pagination
    }
}
