//
//  HomeView.swift
//  EasyBook
//
//  Created by Mobile Dev on 02/06/23.
//

import SwiftUI

struct HomeView: View {
    let screenHeight = UIScreen.main.bounds.size.height
    let screenWidth = UIScreen.main.bounds.size.width
    
    var body: some View {
        ZStack {
            Image("onboard_3")
                .resizable()
                .frame(width: screenWidth * 1.4, height: screenHeight * 0.75)
                .position(x: screenWidth / 3, y: screenHeight * 0.24)
                .rotationEffect(.degrees(10))
            
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
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
