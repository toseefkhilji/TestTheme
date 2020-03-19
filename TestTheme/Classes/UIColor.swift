//
//  UIColor.swift
//  SourceAbledCommunity
//
//  Created by Toseefhusen on 11/13/17.
//  Copyright © 2017 Rangam. All rights reserved.
//

import UIKit

/// UIColor Utility class

public extension UIColor {
    convenience init(r: UInt8, g: UInt8, b: UInt8, a: UInt8) {
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }

    /// This method is used to create Color from HEX
    ///
    /// - Parameter hex: HEX
    ///
    ///        let colorFromHex: UIColor = UIColor(hex: 0xffffff)
    convenience init(hex: Int) {
        self.init(hex: hex, a: 1.0)
    }

    convenience init(hex: Int, a: CGFloat) {
        self.init(r: (hex >> 16) & 0xFF, g: (hex >> 8) & 0xFF, b: hex & 0xFF, a: a)
    }

    convenience init(r: Int, g: Int, b: Int) {
        self.init(r: r, g: g, b: b, a: 1.0)
    }

    convenience init(r: Int, g: Int, b: Int, a: CGFloat) {
        self.init(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: a)
    }

    /// This method is used to create Color from HEX String
    ///
    /// - Parameter hex: HEX String
    ///
    ///        let colorFromHex: UIColor = UIColor(hex: "ffffff")
    convenience init?(hexString: String) {
        guard let hex = hexString.hex else {
            return nil
        }
        self.init(hex: hex)
    }

    class func hexStringToUIColor(_ hex: String) -> UIColor {
        var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if cString.hasPrefix("#") {
            cString.remove(at: cString.startIndex)
        }

        if (cString.count) != 6 {
            return UIColor.gray
        }

        var rgbValue: UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}

extension String {
    var hex: Int? {
        return Int(self, radix: 16)
    }
}
