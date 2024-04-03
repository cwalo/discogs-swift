import Foundation

struct DiscogsArtistSearchResult: Codable, Equatable {
    let coverImage: String?
    let id: Int
    let thumbnail: String
    let title: String
    let type: String
    let uri: String
    let url: String

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
