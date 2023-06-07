//
//  ApiProtocol.swift
//  EasyBook
//
//  Created by Mobile Dev on 06/06/23.
//

import Foundation

protocol ApiProtocol {
    func getSearchResults(query: String, completion: @escaping (Result<Data, Error>) -> Void)
    
    func getTrendingBooks(completion: @escaping (Result<[Book], Error>) -> Void)
}
