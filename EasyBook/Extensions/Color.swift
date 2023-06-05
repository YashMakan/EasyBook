//
//  extensions.swift
//  EasyBook
//
//  Created by Mobile Dev on 01/06/23.
//

import Foundation
import SwiftUI

extension UIColor {
    convenience init(hex: String) {
        var hexValue = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var alpha: CGFloat = 1.0
        
        if hexValue.count == 8 {
            let alphaHex = hexValue.prefix(2)
            hexValue = String(hexValue.dropFirst(2))
            
            if let alphaInt = UInt8(alphaHex, radix: 16) {
                alpha = CGFloat(alphaInt) / 255.0
            }
        }
        
        if hexValue.count == 6 {
            var rgbValue: UInt64 = 0
            Scanner(string: hexValue).scanHexInt64(&rgbValue)
            
            let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
            let green = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
            let blue = CGFloat(rgbValue & 0x0000FF) / 255.0
            
            self.init(red: red, green: green, blue: blue, alpha: alpha)
        } else {
            self.init(white: 1.0, alpha: 1.0)
        }
    }
}
