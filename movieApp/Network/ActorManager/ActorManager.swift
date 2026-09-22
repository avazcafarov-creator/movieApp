//
//  ActorManager.swift
//  movieApp
//
//  Created by Avaz Cafarov on 20.09.26.
//

import Foundation

class ActorManager: ActorManagerUseCase {
    let manager = CoreManager()
    
    func getPopularActors(page: String, completion: @escaping (Actor?, String?) -> Void) {
        manager.request(model: Actor.self,
                        endpoint: ActorEndpoint.popularActor(page: page).path,
                        completion: completion)
    }
}
