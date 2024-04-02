import Foundation

public struct DiscogsPagination : Codable {
    var items: Int
    var page: Int
    var pages: Int
    var itemsPerPage: Int
    var urls: [String: String]?
    
    enum CodingKeys: String, CodingKey {
        case itemsPerPage = "per_page"
        case items
        case page
        case pages
        case urls
    }
}
