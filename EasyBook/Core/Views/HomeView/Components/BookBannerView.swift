//
//  BookBannerView.swift
//  EasyBook
//
//  Created by Mobile Dev on 07/06/23.
//

import SwiftUI

struct BookBannerView: View {
    var imageURL: String?
    var width: Double = 100
    var height: Double = 140
    
    var body: some View {
        AsyncImage(url: URL(string: imageURL?.replacingOccurrences(of: "http://", with: "https://") ?? "https://example.com/image.jpg")!) { image in
            image
                .resizable()
                .frame(width: width, height: height)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(5)
        } placeholder: {
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .cornerRadius(5)
                .frame(width: width, height: height)
                .opacity(0.8)
        }
    }
}

struct BookBannerView_Previews: PreviewProvider {
    static var previews: some View {
        BookBannerView(imageURL: "https://books.google.com/books/content?id=gMoja1iZulYC&printsec=frontcover&img=1&zoom=1&source=gbs_api")
    }
}
