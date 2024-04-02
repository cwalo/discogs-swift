import Foundation

public struct DiscogsRelease: Codable, Equatable {
    var id: Int
    var title: String
    var url: String
    var year: Int?
    var artist: String?
    var artists: [DiscogsArtist]?
    var additionalArtists: [DiscogsArtist]?
    var country: String?
    var mainReleaseID: Int?
    var mainReleaseURL: String?
    var tracklist: [DiscogsTrack]?
    var thumbnail: String?
    var images: [DiscogsImage]?
    var genres: [String]?
    var styles: [String]?
    var labels: [DiscogsLabel]?
    
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
