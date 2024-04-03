import Foundation

public enum DiscogsQueryType : String {
    case artist, label, master, release
    
    public static let all = [artist,
                      release,
                      label,
                      master]
}
