//
//  ApiCore.swift
//  EasyBook
//
//  Created by Mobile Dev on 06/06/23.
//

import Foundation
import Alamofire

class ApiCore {
    static let shared = ApiCore()
    
    private let headers: HTTPHeaders = [
        "Content-Type": "application/json",
    ]
    
    private init() {}
    
    func post(endpoint: String, parameters: Parameters, completion: @escaping (Result<Data, Error>) -> Void) {
        let url = "\(ApiPath.baseUrl)/\(endpoint)"
        
        AF.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
            .responseData { response in
                switch response.result {
                case .success(let data):
                    completion(.success(data))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
    
    func get(endpoint: String, completion: @escaping (Result<Data, Error>) -> Void) {
        let url = "\(ApiPath.baseUrl)/\(endpoint)"
        
        AF.request(url, method: .get, headers: headers)
            .responseData { response in
                switch response.result {
                case .success(let data):
                    do {
                        if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                            let jsonData = try JSONSerialization.data(withJSONObject: json, options: .prettyPrinted)
                            if let jsonString = String(data: jsonData, encoding: .utf8) {
                                print("Response JSON: \(jsonString)")
                            }
                        }
                        
                        completion(.success(data))
                    } catch {
                        completion(.failure(error))
                    }
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
}
