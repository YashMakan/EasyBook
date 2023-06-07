//
//  ScreenResolution.swift
//  EasyBook
//
//  Created by Mobile Dev on 07/06/23.
//

import Foundation
import SwiftUI

class ScreenResolution: ObservableObject {
    var h: Double
    var w: Double
    
    init(h: Double, w: Double) {
        self.h = h
        self.w = w
    }
    
    static func fromUiBounds() -> ScreenResolution {
        let screenHeight = UIScreen.main.bounds.size.height
        let screenWidth = UIScreen.main.bounds.size.width
        return ScreenResolution(h: screenHeight, w: screenWidth)
    }
}
