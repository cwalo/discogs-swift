import Foundation

public struct DiscogsReleasesResponse: Codable {
    public var items = [DiscogsRelease]()
    public var pagination: DiscogsPagination?
    
    enum CodingKeys: String, CodingKey {
        case items = "releases"
        case pagination
    }
}
