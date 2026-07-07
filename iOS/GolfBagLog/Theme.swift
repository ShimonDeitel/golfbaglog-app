import SwiftUI

/// Golf Bag Log unique visual theme.
enum Theme {
    static let accent = Color(red: 0.1216, green: 0.3608, blue: 0.2392)
    static let accentSecondary = Color(red: 0.7882, green: 0.6353, blue: 0.1529)
    static let background = Color(red: 0.0588, green: 0.1020, blue: 0.0784)
    static let card = Color(red: 0.0902, green: 0.1451, blue: 0.1098)
    static let textPrimary = Color(red: 0.9373, green: 0.9608, blue: 0.9333)
    static let textMuted = textPrimary.opacity(0.62)

    static let titleFont = Font.system(.title2, design: .serif).weight(.bold)
    static let headlineFont = Font.system(.headline, design: .rounded).weight(.semibold)
    static let bodyFont = Font.system(.body, design: .default)
    static let captionFont = Font.system(.caption, design: .rounded)

    static let cornerRadius: CGFloat = 16
}

struct CardBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(16)
            .background(Theme.card)
            .cornerRadius(Theme.cornerRadius)
    }
}

extension View {
    func cardStyle() -> some View { modifier(CardBackground()) }
}
