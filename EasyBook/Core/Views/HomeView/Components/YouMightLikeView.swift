//
//  YouMightLikeView.swift
//  EasyBook
//
//  Created by Mobile Dev on 10/06/23.
//

import SwiftUI

struct YouMightLikeView: View {
    var book: Book
    
    @EnvironmentObject var screen: ScreenResolution
    @EnvironmentObject var homeViewModel: HomeViewModel
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                BookBannerView(imageURL: book.volumeInfo?.imageLinks?.thumbnail, width: 56, height: 82)
                Spacer().frame(width: 12)
                VStack(alignment: .leading) {
                    Spacer().frame(height: 4)
                    Text(book.volumeInfo?.title ?? "")
                        .font(.system(size: 14))
                    Spacer().frame(height: 8)
                    Text(book.volumeInfo?.description ?? "")
                        .font(.system(size: 10, weight: .light))
                        .fixedSize(horizontal: false, vertical: true)
                        .lineLimit(3)
                        .foregroundColor(.gray)
                    Spacer()
                    Spacer().frame(height: 12)
                }
                Spacer()
            }
            .padding(.all, 12)
            Spacer()
        }
        .frame(width: screen.w * 0.9, height: screen.h * 0.12)
        .background(.white)
        .cornerRadius(12)
        .shadow(color: .gray.opacity(0.3), radius: 4)
//        .position(x: screen.w / 2, y: screen.h * 0.18)
    }
}

//struct YouMightLikeView_Previews: PreviewProvider {
//    static var previews: some View {
//        YouMightLikeView()
//    }
//}
