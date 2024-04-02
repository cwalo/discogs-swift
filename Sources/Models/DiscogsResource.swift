import Foundation

enum DiscogsResource: Equatable {
    case artist(DiscogsArtist)
    case label(DiscogsLabel)
    case master(DiscogsMaster)
    case release(DiscogsRelease)
    case searchResult(DiscogsSearchResult)
}

extension DiscogsResource {
    var resourceType: DiscogsResourceType {
        switch self {
        case let .searchResult(result):
            return result.type
        case .artist:
            return .artist
        case .label:
            return .label
        case .master:
            return .master
        case .release:
            return .release
        }
    }
    
    var resourceURL: String? {
        switch self {
        case let .searchResult(result):
            return result.url
        case let .artist(artist):
            return artist.url
        case let .label(label):
            return label.url
        case let .master(master):
            return master.url
        case let .release(release):
            return release.url
        }
    }
    
    var name: String? {
        switch self {
        case let .searchResult(result):
            return extractArtist(from: result.title)
        case let .artist(artist):
            return artist.name?.sanitized
        case let .label(label):
            return label.name?.sanitized
        case let .master(master):
            return extractArtist(from: master.title)
        case let .release(release):
            return extractArtist(from: release.title)
        }
    }
    
    var title: String? {
        switch self {
        case let .searchResult(result):
            return extractRelease(from: result.title)
        case.artist:
            return nil
        case let .label(label):
            return label.name?.sanitized
        case let .master(master):
            return extractRelease(from: master.title)
        case let .release(release):
            return extractRelease(from: release.title)
        }
    }
    
    var image: URL? {
        var url: String?
        switch self {
        case let .searchResult(result):
            url = result.coverImage ?? result.thumbnail
        case let .artist(artist):
            url = artist.images?.first?.url ?? artist.thumbnail
        case let .label(label):
            url = label.images?.first?.url
        case let .master(master):
            url = master.images?.first?.url
        case let .release(release):
            url = release.images?.first?.url
        }

        guard let url = url else { return nil }
        return URL(string: url)
    }

    func extractArtist(from title: String) -> String? {
        let sanitized = title.replacingOccurrences(of: "*", with: "")
        let components = sanitized.components(separatedBy: " - ")
        if components.isEmpty { return nil }
        return components[0].removeParentheses()
    }

    func extractRelease(from title: String) -> String? {
        let sanitized = title.replacingOccurrences(of: "*", with: "")
        let components = sanitized.components(separatedBy: " - ")
        if components.count < 2 { return nil }
        return components[1].removeParentheses()
    }
}

fileprivate
extension String {
    var sanitized: String {
        self.removeParentheses().replacingOccurrences(of: "*", with: "")
    }
}
