//
//  BackgroundBlobView.swift
//  EasyBook
//
//  Created by Mobile Dev on 02/06/23.
//

import SwiftUI

struct BackgroundBlobView: View {
    var body: some View {
        Image("Ellipse 1")
            .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height * 0.2)
        
        Image("Ellipse 2")
            .position(x: UIScreen.main.bounds.width * 0.9, y: UIScreen.main.bounds.height * 0.5)
        
        Image("Ellipse 3")
            .position(x: UIScreen.main.bounds.width * 0.3, y: UIScreen.main.bounds.height * 0.75)
    }
}

struct BackgroundBlobView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundBlobView()
    }
}
