import Foundation

public struct DiscogsArtistSearchResult: Codable, Equatable {
    public var coverImage: String?
    public var id: Int
    public var thumbnail: String
    public var title: String
    public var type: String
    public var uri: String
    public var url: String

    enum CodingKeys: String, CodingKey {
        case url = "resource_url"
        case thumbnail = "thumb"
        case coverImage = "cover_image"
        case id
        case title
        case type
        case uri
    }
}
