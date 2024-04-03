import Foundation

public enum DiscogsResourceType: String, Codable {
    case artist, label, master, release
}

public struct DiscogsSearchResult: Codable, Equatable  {
    public var id: Int
    public var catno: String?
    public var country: String?
    public var url: String
    public var thumbnail: String
    public var coverImage: String?
    public var title: String
    public var type: DiscogsResourceType
    public var uri: String
    public var year: String?
    public var genre: [String]?
    public var label: [String]?
    public var format: [String]?
    public var style: [String]?
    
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


extension DiscogsSearchResult {
    public static let mock = Self.init(id: 1,
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
