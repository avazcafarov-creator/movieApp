//
//  CoreManager.swift
//  movieApp
//
//  Created by Avaz Cafarov on 18.09.26.
//

import Foundation
import Alamofire

class CoreManager {
    
    func request<T: Codable>(model: T.Type,
                             endpoint: String,
                             method: HTTPMethod = .get,
                             parameter: Parameters? = nil,
                             encoding: EncodingType = .url,
                             completion: @escaping (T?, String?) -> Void) {
        
        AF.request(endpoint,
                   method: method,
                   parameters: parameter,
                   encoding: encoding == .url ? URLEncoding.default : JSONEncoding.default, headers: CoreHelper.shared.header).responseData { response in
            switch response.result {
            case .success(let data):
                do {
                    let decodeData = try JSONDecoder().decode(T.self, from: data)
                    completion(decodeData, nil)
                } catch {
                    completion(nil, error.localizedDescription)
                }
            case .failure(let error):
                completion(nil, error.localizedDescription)
            }
        }
    }
}
