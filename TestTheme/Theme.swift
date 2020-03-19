//
//  Theme.swift
//  TestTheme
//
//  Created by Toseef Khilji on 19/03/20.
//  Copyright © 2020 Toseef. All rights reserved.
//

import Foundation
import UIKit

/// Base Theme
enum ThemeStyle {
    case dark
    case light
    case custom([String:Any])
}

struct AppTheme {
    static var current: AppTheme = AppTheme.light

    let primary: UIColor
    let secondary: UIColor
    let background: UIColor
    let navigationBar: UIColor
    let navigationBarTint: UIColor
    let buttonBackgound: UIColor
    let buttonTitle: UIColor
    let textfieldPlaceHolder: UIColor
    let textfieldText: UIColor
    let textfieldTint: UIColor
    let switchOn: UIColor
    let labelPlaceholder: UIColor
    let labelheader: UIColor
    let labelDetail: UIColor
    let error: UIColor
    let cardViewBackground: UIColor

    init(primary: UIColor, secondary: UIColor, background: UIColor, placeHolder: UIColor, titleColor: UIColor, textfieldText: UIColor, error: UIColor, cardView: UIColor) {
        self.primary = primary
        self.secondary = secondary
        self.background = background
        self.navigationBar = primary
        self.navigationBarTint = titleColor
        self.buttonBackgound = primary
        self.buttonTitle = titleColor
        self.textfieldPlaceHolder = placeHolder
        self.textfieldTint = primary
        self.textfieldText = textfieldText
        self.switchOn = primary
        self.labelPlaceholder = placeHolder
        self.labelheader = secondary
        self.labelDetail = placeHolder
        self.error = error
        self.cardViewBackground = cardView
    }

    init(with dictionary: [String : Any]) {
        self.primary = UIColor(hexString: dictionary["primary"] as! String )!
        self.secondary = UIColor(hexString: dictionary["secondary"] as! String )!
        self.background = UIColor(hexString: dictionary["background"] as! String )!
        self.navigationBar = UIColor(hexString: dictionary["primary"] as! String )!
        self.navigationBarTint = UIColor(hexString: dictionary["titleColor"] as! String )!
        self.buttonBackgound = UIColor(hexString: dictionary["primary"] as! String )!
        self.buttonTitle = UIColor(hexString: dictionary["titleColor"] as! String )!
        self.textfieldPlaceHolder = UIColor(hexString: dictionary["placeHolder"] as! String )!
        self.textfieldTint = UIColor(hexString: dictionary["primary"] as! String )!
        self.textfieldText = UIColor(hexString: dictionary["textfieldText"] as! String )!
        self.switchOn = UIColor(hexString: dictionary["primary"] as! String )!
        self.labelPlaceholder = UIColor(hexString: dictionary["placeHolder"] as! String )!
        self.labelheader = UIColor(hexString: dictionary["secondary"] as! String )!
        self.labelDetail = UIColor(hexString: dictionary["placeHolder"] as! String )!
        self.error = UIColor(hexString: dictionary["error"] as! String )!
        self.cardViewBackground = UIColor(hexString: dictionary["cardView"] as! String )!
    }
}

extension AppTheme {
    static let light = AppTheme(primary: UIColor(hex: 0x11689E),
                                secondary: UIColor(hex: 0xF77130),
                                background: UIColor(hex: 0xF1F1F2),
                                placeHolder: UIColor(hex: 0x96989A, a: 0.8),
                                titleColor: .white,
                                textfieldText: UIColor(hex: 0x606062),
                                error: .red,
                                cardView: .white)

    static let dark = AppTheme(primary: UIColor(hex: 0x11689E),
                                secondary: UIColor(hex: 0xF77130),
                                background: UIColor(hex: 0x121212),
                                placeHolder: UIColor(hex: 0xC0C0CC),
                                titleColor: .white,
                                textfieldText: UIColor(hex: 0xf2f2f7),
                                error: .red,
                                cardView: UIColor(hex: 0x1E1E1E))
}


//
//var statusBarStyle: UIStatusBarStyle
//
//static var btnTextColor: UIColor {
//    if #available(iOS 13.0, *) {
//        return UIColor { (traits) -> UIColor in
//            // Return one of two colors depending on light or dark mode
//            return traits.userInterfaceStyle == .dark ?
//                UIColor(rgb: 0x121212) :
//                UIColor(rgb: 0xeeeeee)
//        }
//    } else {
//        // Same old color used for iOS 12 and earlier
//        return UIColor(rgb: 0xeeeeee)
//    }
//}

class Label: UILabel {
    override func draw(_ rect: CGRect) {
        super.draw(rect)

    }
    override func layoutSubviews() {
        textColor = AppTheme.current.textfieldPlaceHolder
    }
}
