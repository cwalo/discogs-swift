import Foundation

enum DiscogsResourceType: String, Codable {
    case artist, label, master, release
}

struct DiscogsSearchResult: Codable, Equatable  {
    let id: Int
    let catno: String?
    let country: String?
    let url: String
    let thumbnail: String
    let coverImage: String?
    let title: String
    let type: DiscogsResourceType
    let uri: String
    let year: String?
    let genre: [String]?
    let label: [String]?
    let format: [String]?
    let style: [String]?
    
    enum CodingKeys: String, CodingKey {
        case url = "resource_url"
        case thumbnail = "thumb"
        case coverImage = "cover_image"
        case genre
        case label
        case format
        case style
        case id
        case catno
        case country
        case title
        case type
        case uri
        case year
    }
}

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

extension DiscogsSearchResult {
    static let mock = Self.init(id: 1,
                                catno: "",
                                country: "US",
                                url: "www.google.com",
                                thumbnail: "",
                                coverImage: "",
                                title: "Title",
                                type: .release,
                                uri: "123",
                                year: "1982",
                                genre: [],
                                label: [],
                                format: [],
                                style: [])
}
