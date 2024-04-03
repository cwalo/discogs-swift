import Foundation

public struct DiscogsTrack: Equatable, Codable {
    public var title: String?
    public var performers: [DiscogsArtist] = []
    
    enum CodingKeys: String, CodingKey {
        case title
        case performers = "extraartists"
    }
}
