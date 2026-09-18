//
//  CoreHelper.swift
//  movieApp
//
//  Created by Avaz Cafarov on 18.09.26.
//

import Foundation

enum EncodingType {
    case url, json
}

class CoreHelper {
    static let shared = CoreHelper()
    
    private init() {}
    
    private let version = "3"
    private let baseURL = "https://api.themoviedb.org"
    
    func configureURL(endpoint: Endpoint) -> String {
        baseURL + version + "/" + endpoint.rawValue
    }
}
