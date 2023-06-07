//
//  HomeViewNavigationView.swift
//  EasyBook
//
//  Created by Mobile Dev on 07/06/23.
//

import SwiftUI

struct HomeViewNavigationView: View {
    @EnvironmentObject var screen: ScreenResolution
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.leading, 16)
                    .foregroundColor(.white)
                Spacer()
                Image("logo")
                    .resizable()
                    .frame(width: 28, height: 34)
                Text("EASY BOOK")
                Spacer()
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding(.trailing, 16)
            }
            Spacer()
        }
        .position(x: screen.w / 2, y: (screen.h / 2) - 35)
    }
}

struct HomeViewNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewNavigationView()
    }
}
