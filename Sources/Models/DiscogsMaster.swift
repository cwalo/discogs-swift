import Foundation

public struct DiscogsMaster: Codable, Equatable {
    var id: Int?
    var title: String
    var url: String?
    var year: Int?
    var artists: [DiscogsArtist]?
    var additionalArtists: [DiscogsArtist]?
    var country: String?
    var images: [DiscogsImage]?
    var versionsURL: String?
    var tracklist: [DiscogsTrack]?
    var mainRelease: Int?
    var mainReleaseURL: String?
    
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
