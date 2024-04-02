import Foundation

public struct DiscogsLabel: Codable, Equatable {
    var id: Int?
    var name: String?
    var profile: String?
    var releasesURL: String?
    var url: String?
    var images: [DiscogsImage]?
    
    enum CodingKeys: String, CodingKey {
        case releasesURL = "releases_url"
        case url = "resource_url"
        
        case id
        case images
        case name
        case profile
    }
}
