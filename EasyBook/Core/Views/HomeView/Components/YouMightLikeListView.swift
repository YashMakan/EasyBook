//
//  YouMightLikeListView.swift
//  EasyBook
//
//  Created by Mobile Dev on 10/06/23.
//

import SwiftUI

struct YouMightLikeListView: View {
    @EnvironmentObject var homeViewModel: HomeViewModel
    @EnvironmentObject var screen: ScreenResolution
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                HStack {
                    Text("You Might Like")
                        .bold()
                        .font(.system(.headline))
                    Spacer()
                }
                Spacer().frame(height: 16)
                ScrollView(.vertical) {
                    VStack {
                        if homeViewModel.youMightLikeBooks.isEmpty {
                            ForEach(0..<5) { _ in
                                ShimmerView()
                            }
                        }
                        else {
                            ForEach(homeViewModel.youMightLikeBooks, id: \.id) { book in
                                YouMightLikeView(book: book)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                }
                Spacer().frame(height: 16)
            }
        }
        .frame(width: screen.w, height: screen.h * 0.4)
//        .padding(.leading, 32)
//        .position(x: screen.w / 2, y: (homeViewModel.isBookReadingInProgress ? screen.h * 0.42 : screen.h * 0.2) + screen.h * 0.22)
    }
}

struct YouMightLikeListView_Previews: PreviewProvider {
    static var previews: some View {
        YouMightLikeListView()
    }
}
