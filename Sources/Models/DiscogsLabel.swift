import Foundation

public struct DiscogsLabel: Codable, Equatable {
    public var id: Int?
    public var name: String?
    public var profile: String?
    public var releasesURL: String?
    public var url: String?
    public var images: [DiscogsImage]?
    
    enum CodingKeys: String, CodingKey {
        case releasesURL = "releases_url"
        case url = "resource_url"
        
        case id
        case images
        case name
        case profile
    }
}
