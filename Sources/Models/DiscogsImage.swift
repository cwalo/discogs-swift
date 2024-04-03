import Foundation

public struct DiscogsImage: Codable, Equatable {
    public var height: Int = 0
    public var width: Int = 0
    public var url: String?
    
    enum CodingKeys: String, CodingKey {
        case url = "resource_url"
        
        case height
        case width
    }
}
