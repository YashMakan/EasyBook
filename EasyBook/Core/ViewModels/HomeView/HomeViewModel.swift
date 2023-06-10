//
//  HomeViewModel.swift
//  EasyBook
//
//  Created by Mobile Dev on 06/06/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var trendingBooks: [Book] = []
    @Published var youMightLikeBooks: [Book] = []
    @Published var weekBook: Book?
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
    
    func getWeekBook() {
        apiService.getWeekBook() { result in
            switch result {
            case .success(let book):
                self.weekBook = book;
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func getYouMightLikeBooks() {
        apiService.getYouMightLikeBooks() { result in
            switch result {
            case .success(let books):
                self.youMightLikeBooks = books
            case .failure(let error):
                print(error)
            }
        }
    }
}
