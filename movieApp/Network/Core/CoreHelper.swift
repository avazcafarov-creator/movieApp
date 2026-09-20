//
//  CoreHelper.swift
//  movieApp
//
//  Created by Avaz Cafarov on 18.09.26.
//

import Foundation
import Alamofire

enum EncodingType {
    case url, json
}

class CoreHelper {
    static let shared = CoreHelper()
    
    private init() {}
    
    private let version = "3"
    private let baseURL = "https://api.themoviedb.org"
    
    private let imageSize = "w500"
    private let imageBaseURL = "https://image.tmdb.org/t/p/"
    
    let header: HTTPHeaders = ["accept": "application/json",
                                    "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkYjI2YjgwZjYyOTg3YTQzYzczZDRlYjlhYWFlODc4ZSIsIm5iZiI6MTc4OTcyODU2MC4yNjU5OTk4LCJzdWIiOiI2YWFkMTczMDJiOGQwOGZiNTAzY2IxNWUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.6nmyBMMJag71R7xvSx8Hjl32jAOqzC8BzO0QZvInUKw"]
    
    func configureURL(endpoint: String) -> String {
        baseURL + "/" + version + "/" + endpoint
    }
    
    func configureImageURL(path: String) -> String {
        imageBaseURL + imageSize + path
    }
}
