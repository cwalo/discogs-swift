import Foundation

public struct DiscogsImage: Codable, Equatable {
    var height: Int = 0
    var width: Int = 0
    var url: String?
    
    enum CodingKeys: String, CodingKey {
        case url = "resource_url"
        
        case height
        case width
    }
}
