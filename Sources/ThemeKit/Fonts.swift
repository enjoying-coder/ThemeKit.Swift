import SwiftUI
import UIKit

struct CustomFont {
    static let fontName = "LexendDeca"

    static func font(size: CGFloat, weight: Font.Weight) -> Font {
        var fontNameWithWeight = fontName
        
        switch weight {
        case .ultraLight:
            fontNameWithWeight += "-ExtraLight"
        case .thin:
            fontNameWithWeight += "-Thin"
        case .light:
            fontNameWithWeight += "-Light"
        case .regular:
            fontNameWithWeight += "-Regular"
        case .medium:
            fontNameWithWeight += "-Medium"
        case .semibold:
            fontNameWithWeight += "-SemiBold"
        case .bold:
            fontNameWithWeight += "-Bold"
        case .heavy:
            fontNameWithWeight += "-ExtraBold"
        case .black:
            fontNameWithWeight += "-Black"
        default:
            break
        }

        return .custom(fontNameWithWeight, size: size)
    }
}

struct CustomUIFont {
    static let fontName = "LexendDeca"
    
    static func font(size: CGFloat, weight: UIFont.Weight) -> UIFont {
        var fontNameWithWeight = fontName
        
        switch weight {
        case .ultraLight:
            fontNameWithWeight += "-ExtraLight"
        case .thin:
            fontNameWithWeight += "-Thin"
        case .light:
            fontNameWithWeight += "-Light"
        case .regular:
            fontNameWithWeight += "-Regular"
        case .medium:
            fontNameWithWeight += "-Medium"
        case .semibold:
            fontNameWithWeight += "-SemiBold"
        case .bold:
            fontNameWithWeight += "-Bold"
        case .heavy:
            fontNameWithWeight += "-ExtraBold"
        case .black:
            fontNameWithWeight += "-Black"
        default:
            break
        }
        
        return UIFont(name: fontNameWithWeight, size: size) ?? UIFont.systemFont(ofSize: size, weight: weight)
    }
}

extension Font {
    public static let themeTitle1: Font = CustomFont.font(size: 40, weight: .bold)
    public static let themeTitle2: Font = CustomFont.font(size: 34, weight: .bold)
    public static let themeTitle2R: Font = CustomFont.font(size: 34, weight: .regular)
    public static let themeTitle3: Font = CustomFont.font(size: 22, weight: .bold)
    public static let themeHeadline1: Font = CustomFont.font(size: 22, weight: .semibold)
    public static let themeHeadline2: Font = CustomFont.font(size: 17, weight: .semibold)
    public static let themeBody: Font = CustomFont.font(size: 17, weight: .regular)
    public static let themeSubhead1: Font = CustomFont.font(size: 14, weight: .medium)
    public static let themeSubhead1I: Font = CustomFont.font(size: 14, weight: .medium).italic()
    public static let themeSubhead2: Font = CustomFont.font(size: 14, weight: .regular)
    public static let themeCaption: Font = CustomFont.font(size: 12, weight: .regular)
    public static let themeCaptionSB: Font = CustomFont.font(size: 12, weight: .semibold)
    public static let themeMicro: Font = CustomFont.font(size: 10, weight: .regular)
    public static let themeMicroSB: Font = CustomFont.font(size: 10, weight: .semibold)
}

extension UIFont {
    public static let title1: UIFont = CustomUIFont.font(size: 40, weight: .bold)
    public static let title2: UIFont = CustomUIFont.font(size: 34, weight: .bold)
    public static let title2R: UIFont = CustomUIFont.font(size: 34, weight: .regular)
    public static let title3: UIFont = CustomUIFont.font(size: 22, weight: .bold)
    public static let headline1: UIFont = CustomUIFont.font(size: 22, weight: .semibold)
    public static let headline2: UIFont = CustomUIFont.font(size: 17, weight: .semibold)
    public static let body: UIFont = CustomUIFont.font(size: 17, weight: .regular)
    public static let subhead1: UIFont = CustomUIFont.font(size: 14, weight: .medium)
    public static let subhead1I: UIFont = CustomUIFont.font(size: 14, weight: .medium).with(traits: .traitItalic)
    public static let subhead2: UIFont = CustomUIFont.font(size: 14, weight: .regular)
    public static let caption: UIFont = CustomUIFont.font(size: 12, weight: .regular)
    public static let captionSB: UIFont = CustomUIFont.font(size: 12, weight: .semibold)
    public static let micro: UIFont = CustomUIFont.font(size: 10, weight: .regular)
    public static let microSB: UIFont = CustomUIFont.font(size: 10, weight: .semibold)
}

extension UIFont {
    func with(traits: UIFontDescriptor.SymbolicTraits...) -> UIFont {
        guard let descriptor = self.fontDescriptor.withSymbolicTraits(UIFontDescriptor.SymbolicTraits(traits)) else {
            return self
        }
        return UIFont(descriptor: descriptor, size: 0)
    }
}
