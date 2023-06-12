//
//  SearchView.swift
//  EasyBook
//
//  Created by Mobile Dev on 12/06/23.
//

import SwiftUI

struct SearchView: View {
    @State private var text: String = ""
    @EnvironmentObject var homeViewModel: HomeViewModel
    @EnvironmentObject var screen: ScreenResolution
    
    var body: some View {
        VStack {
            TextField("Search", text: $text)
                .padding()
                .background(.gray.opacity(0.2))
                .cornerRadius(13)
                .onChange(of: text) { newData in
                    homeViewModel.isLoaded = false
                }
                .onSubmit {
                    homeViewModel.searchBooks(query: text)
                }
            HStack {
                Text("Search Results")
                    .font(.system(.title2))
                Spacer()
            }
            HStack {
                Text("Found (\(homeViewModel.searchResults.count)) results")
                    .font(.system(.caption))
                Spacer()
            }
            Spacer().frame(height: 16)
            ScrollView(.vertical) {
                LazyVStack {
                    ForEach(homeViewModel.searchResults, id: \.id) { book in
                        YouMightLikeView(book: book)
                            .padding(.trailing, 8)
                    }
                    if(homeViewModel.isLoaded){
                        ProgressView()
                            .padding()
                            .onAppear(perform: {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    if(!text.isEmpty) {
                                        homeViewModel.searchBooks(query: text)
                                    }
                                }
                            })
                    }
                }
            }
            
            Spacer()
        }
        .padding(.horizontal, 16)
        .onAppear {
            homeViewModel.searchResults = []
            homeViewModel.isLoaded = false
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .environmentObject(HomeViewModel())
            .environmentObject(ScreenResolution.fromUiBounds())
    }
}
