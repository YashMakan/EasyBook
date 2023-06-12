//
//  ApiProtocol.swift
//  EasyBook
//
//  Created by Mobile Dev on 06/06/23.
//

import Foundation

protocol ApiProtocol {
    func getSearchResults(query: String, startIndex: Int, completion: @escaping (Result<[Book], Error>) -> Void)
    
    func getTrendingBooks(completion: @escaping (Result<[Book], Error>) -> Void)
}
