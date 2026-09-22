//
//  ActorEndpoint.swift
//  movieApp
//
//  Created by Avaz Cafarov on 20.09.26.
//

import Foundation

enum ActorEndpoint {
    case popularActor(page: String)
    
    var path: String {
        switch self {
        case .popularActor(let page):
            return CoreHelper.shared.configureURL(endpoint: "person/popular?page=\(page)")
        }
    }
}
 
