//
//  ActorMockManager.swift
//  movieApp
//
//  Created by Avaz Cafarov on 22.09.26.
//

import Foundation

class ActorMockManager: ActorManagerUseCase {
    
    func getPopularActors(page: String, completion: @escaping (Actor?, String?) -> Void) {
        guard let url = Bundle.main.url(forResource: "ActorMockData",
                                        withExtension: "json") else { return }
        do {
            let data = try Data(contentsOf: url)
            let actor = try JSONDecoder().decode(Actor.self, from: data)
            completion(actor, nil)
        } catch {
            completion(nil, error.localizedDescription)
        }
    }
}
