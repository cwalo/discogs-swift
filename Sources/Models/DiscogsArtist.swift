import Foundation

public struct DiscogsArtist: Codable, Equatable {
    var id: Int?
    var name: String?
    var profile: String?
    var releasesURL: String?
    var url: String?
    var role: String?
    var tracks: String?
    var externalURLs: [String]?
    var members: [DiscogsArtist]?
    var thumbnail: String?
    var images: [DiscogsImage]?
    
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
