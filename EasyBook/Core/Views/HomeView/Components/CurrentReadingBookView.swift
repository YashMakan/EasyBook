//
//  CurrentReadingBookView.swift
//  EasyBook
//
//  Created by Mobile Dev on 07/06/23.
//

import SwiftUI

struct CurrentReadingBookView: View {
    @EnvironmentObject var screen: ScreenResolution
    @EnvironmentObject var homeViewModel: HomeViewModel
    
    var body: some View {
        VStack {
            HStack {
                BookBannerView(imageURL: nil)
                Spacer().frame(width: 12)
                VStack(alignment: .leading) {
                    Spacer().frame(height: 4)
                    Text("The Psychology of Money")
                        .font(.system(size: 14))
                    Spacer().frame(height: 12)
                    Text("The psychology of money is the study of our behavior with money. Success with money isn't about knowledge, IQ or how good you are at math. It's about behavior, and everyone is prone to certain behaviors over others.")
                        .font(.system(size: 10, weight: .light))
                        .foregroundColor(.gray)
                    Spacer()
                    HStack {
                        Button(action: {}) {
                            Text("Grab Now")
                                .foregroundColor(.white)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 16)
                                .background(AppColors.primaryColor)
                                .cornerRadius(8)
                                .bold()
                                .font(.system(size: 10))
                        }
                        Spacer().frame(width: 8)
                        Button(action: {}) {
                            Text("Learn More")
                                .font(.system(size: 10))
                                .bold()
                                .foregroundColor(Color(uiColor: UIColor(hex: "#4D506C")))
                        }
                        Spacer()
                    }
                    Spacer().frame(height: 12)
                }
                Spacer()
            }
            .padding(.all, 12)
        }
        .frame(width: screen.w * 0.9, height: screen.h * 0.2)
        .background(.white)
        .cornerRadius(12)
        .shadow(color: .gray.opacity(0.3), radius: 16)
        .position(x: screen.w / 2, y: screen.h * 0.18)
    }
}

//struct CurrentReadingBookView_Previews: PreviewProvider {
//    static var previews: some View {
//        CurrentReadingBookView()
//    }
//}
