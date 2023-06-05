//
//  LogoDetailsView.swift
//  EasyBook
//
//  Created by Mobile Dev on 02/06/23.
//

import SwiftUI

struct LogoDetailsView: View {
    var body: some View {
        VStack {
            Image("Logo White")
                .resizable()
                .frame(width: 54, height: 70)
            Spacer().frame(height: 16)
            Text("EASY BOOK")
                .foregroundColor(.white)
                .font(.system(.title2))
        }
        .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)
    }
}

struct LogoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        LogoDetailsView()
    }
}
