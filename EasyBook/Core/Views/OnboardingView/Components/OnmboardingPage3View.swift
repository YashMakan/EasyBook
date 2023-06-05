//
//  OnmboardingPage3View.swift
//  EasyBook
//
//  Created by Mobile Dev on 02/06/23.
//

import SwiftUI

struct OnboardingPage3View: View {
    let screenHeight = UIScreen.main.bounds.size.height
    let screenWidth = UIScreen.main.bounds.size.width
    var body: some View {
        ZStack {
            Image("onboard_3")
                .resizable()
                .frame(width: screenWidth * 1.4, height: screenHeight * 0.75)
                .position(x: screenWidth / 3, y: screenHeight * 0.24)
                .rotationEffect(.degrees(10))
            HStack(alignment: .center) {
                Image("logo")
                    .resizable()
                    .frame(width: 28, height: 36)
                Text("EASY BOOK")
            }.position(x: screenWidth / 2, y: screenHeight * 0.05)
            Books()
                .padding(.top, screenHeight * 0.32)
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Books: View {
    let screenHeight = UIScreen.main.bounds.size.height
    let screenWidth = UIScreen.main.bounds.size.width
    
    @State var bookWidth: CGFloat = 0
    @State var bookHeight: CGFloat = 0
    @State var bookYOffset: CGFloat = 0
    
    var body: some View {
        Group {
            BookView(image: "Book 1", width: bookWidth * 1.2, height: bookHeight * 1.3, x: screenWidth * 0.2, y: screenHeight * 0.2 - bookYOffset)
            BookView(image: "Book 2", width: bookWidth * 1.2, height: bookHeight, x: 80, y: screenHeight * 0.42 - bookYOffset)
            
            BookView(image: "Book 7", width: bookWidth * 1.1, height: bookHeight * 1.1, x: screenWidth / 2, y: screenHeight * 0.16 - bookYOffset)
            
            BookView(image: "Book 3", width: bookWidth, height: bookHeight, x: screenWidth / 2, y: screenHeight * 0.34 - bookYOffset)
            
            BookView(image: "Book 5", width: bookWidth, height: bookHeight, x: screenWidth / 2, y: screenHeight * 0.52 - bookYOffset)
            
            BookView(image: "Book 4", width: bookWidth, height: bookHeight * 1.2, x: screenWidth - 85, y: screenHeight * 0.22 - bookYOffset)
            
            BookView(image: "Book 6", width: bookWidth * 0.8, height: bookHeight * 0.9, x: screenWidth - 75, y: screenHeight * 0.45 - bookYOffset)
        }.onAppear {
            bookWidth = screenWidth * 0.35
            bookHeight = 260 * 0.7
            bookYOffset = screenHeight * 0.28
        }
    }
}

struct BookView: View {
    var image: String
    var width: Double
    var height: Double
    var x: Double
    var y: Double
    
    var body: some View {
        Image(image)
            .resizable()
            .frame(width: width, height: height)
            .position(x: x, y: y)
    }
}

struct OnboardingPage3View_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage3View()
    }
}
