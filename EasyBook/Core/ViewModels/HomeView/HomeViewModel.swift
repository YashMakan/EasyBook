//
//  HomeViewModel.swift
//  EasyBook
//
//  Created by Mobile Dev on 06/06/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var trendingBooks: [Book] = []
    var apiService: Api = Api()
    @Published var isBookReadingInProgress = true;
    
    func getTrendingBooks() {
        apiService.getTrendingBooks() { result in
            switch result {
            case .success(let books):
                self.trendingBooks = books
            case .failure(let error):
                print(error)
            }
        }
    }
}
