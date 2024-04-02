import Foundation

public enum DiscogsQueryParameter: String {
    case type,
    title,
    release_title,
    credit,
    artist,
    anv,
    label,
    genre,
    style,
    country,
    year,
    format,
    catno,
    barcode,
    track,
    submitter,
    contributor
    
    static let all = [type,
                      title,
                      release_title,
                      credit,
                      artist,
                      anv,
                      label,
                      genre,
                      style,
                      country,
                      year,
                      format,
                      catno,
                      barcode,
                      track,
                      submitter,
                      contributor]
}
