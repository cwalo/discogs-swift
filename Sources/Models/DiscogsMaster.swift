import Foundation

public struct DiscogsMaster: Codable, Equatable {
    public var id: Int?
    public var title: String
    public var url: String?
    public var year: Int?
    public var artists: [DiscogsArtist]?
    public var additionalArtists: [DiscogsArtist]?
    public var country: String?
    public var images: [DiscogsImage]?
    public var versionsURL: String?
    public var tracklist: [DiscogsTrack]?
    public var mainRelease: Int?
    public var mainReleaseURL: String?
    
    enum CodingKeys: String, CodingKey {
        case url = "resource_url"
        case additionalArtists = "extraartists"
        case versionsURL = "versions_url"
        case mainRelease = "main_release"
        case mainReleaseURL = "main_release_url"
        
        case id
        case images
        case country
        case title
        case year
        case artists
        case tracklist
    }
}
