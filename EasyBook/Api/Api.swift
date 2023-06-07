//
//  Api.swift
//  EasyBook
//
//  Created by Mobile Dev on 06/06/23.
//

import Foundation

class Api: ApiProtocol {
    let webService: ApiCore = ApiCore.shared
    
    func getSearchResults(query: String, completion: @escaping (Result<Data, Error>) -> Void) {
        webService.post(endpoint: ApiPath.trendingBooks, parameters: ["search": query]) { result in
            completion(result)
        }
    }
    
    func getTrendingBooks(completion: @escaping (Result<[Book], Error>) -> Void) {
        webService.get(endpoint: ApiPath.trendingBooks) { result in
            switch result {
            case .success(let data):
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let response = try decoder.decode(BookResponse.self, from: data)
                    completion(.success(response.result))
                } catch {
                    completion(.failure(error))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
