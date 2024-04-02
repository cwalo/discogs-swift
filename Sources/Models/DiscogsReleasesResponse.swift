import Foundation

public struct DiscogsReleasesResponse: Codable {
    var items = [DiscogsRelease]()
    var pagination: DiscogsPagination?
    
    enum CodingKeys: String, CodingKey {
        case items = "releases"
        case pagination
    }
}
