//
//  ActorManagerUseCase.swift
//  movieApp
//
//  Created by Avaz Cafarov on 22.09.26.
//

import Foundation

protocol ActorManagerUseCase {
    func getPopularActors(page: String, completion: @escaping (Actor?, String?) -> Void)
}
