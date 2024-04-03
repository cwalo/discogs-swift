import Foundation

public struct DiscogsArtist: Codable, Equatable {
    public var id: Int?
    public var name: String?
    public var profile: String?
    public var releasesURL: String?
    public var url: String?
    public var role: String?
    public var tracks: String?
    public var externalURLs: [String]?
    public var members: [DiscogsArtist]?
    public var thumbnail: String?
    public var images: [DiscogsImage]?
    
    enum CodingKeys: String, CodingKey {
        case releasesURL = "releases_url"
        case url = "resource_url"
        case externalURLs = "urls"
        case thumbnail = "thumb"
        
        case id
        case name
        case profile
        case role
        case tracks
        case members
        case images
    }
}
