import Foundation

public struct DiscogsRelease: Codable, Equatable {
    public var id: Int
    public var title: String
    public var url: String
    public var year: Int?
    public var artist: String?
    public var artists: [DiscogsArtist]?
    public var additionalArtists: [DiscogsArtist]?
    public var country: String?
    public var mainReleaseID: Int?
    public var mainReleaseURL: String?
    public var tracklist: [DiscogsTrack]?
    public var thumbnail: String?
    public var images: [DiscogsImage]?
    public var genres: [String]?
    public var styles: [String]?
    public var labels: [DiscogsLabel]?
    
    enum CodingKeys: String, CodingKey {
        case url = "resource_url"
        case additionalArtists = "extraartists"
        case mainReleaseID = "main_release"
        case mainReleaseURL = "main_release_url"
        case thumbnail = "thumb"
        
        case id
        case title
        case year
        case artist
        case artists
        case tracklist
        case country
        case images
        case genres
        case styles
        case labels
    }
}
