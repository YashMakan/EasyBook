//
//  PopuplarBooksView.swift
//  EasyBook
//
//  Created by Mobile Dev on 07/06/23.
//

import SwiftUI

struct PopularBooksView: View {
    @EnvironmentObject var homeViewModel: HomeViewModel
    @EnvironmentObject var screen: ScreenResolution
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                HStack {
                    Text("Recommended for you")
                        .bold()
                        .font(.system(.headline))
                    Spacer()
                }
                Spacer().frame(height: 16)
                ScrollView(.horizontal) {
                    HStack {
                        if homeViewModel.trendingBooks.isEmpty {
                            ForEach(0..<5) { _ in
                                ShimmerView()
                            }
                        }
                        else {
                            ForEach(homeViewModel.trendingBooks, id: \.id) { book in
                                BookBannerView(imageURL: book.volumeInfo?.imageLinks?.thumbnail)
                            }
                        }
                    }
                }
            }
            Spacer()
        }
        .frame(width: screen.w, height: 140)
        .padding(.leading, 32)
        .position(x: screen.w / 2, y: homeViewModel.isBookReadingInProgress ? screen.h * 0.42 : screen.h * 0.2)
    }
}

struct PopularBooksView_Previews: PreviewProvider {
    static var previews: some View {
        PopularBooksView()
    }
}
