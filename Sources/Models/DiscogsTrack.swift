import Foundation

public struct DiscogsTrack: Equatable, Codable {
    var title: String?
    var performers: [DiscogsArtist] = []
    
    enum CodingKeys: String, CodingKey {
        case title
        case performers = "extraartists"
    }
}
