import Foundation

public struct DiscogsPagination : Codable {
    public var items: Int
    public var page: Int
    public var pages: Int
    public var itemsPerPage: Int
    public var urls: [String: String]?
    
    enum CodingKeys: String, CodingKey {
        case itemsPerPage = "per_page"
        case items
        case page
        case pages
        case urls
    }
}
