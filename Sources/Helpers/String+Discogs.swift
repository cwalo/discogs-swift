import Foundation

extension String {
    func removeParentheses() -> String {
        self.replacingOccurrences(of: "\\s?\\([\\w\\s]*\\)", with: "", options: .regularExpression)
    }
}
