//
//  ActorManager.swift
//  movieApp
//
//  Created by Avaz Cafarov on 20.09.26.
//

import Foundation

class ActorManager {
    let manager = CoreManager()
    func getPopularActors(completion: @escaping (Actor?, String?) -> Void) {
        manager.request(model: Actor.self,
                        endpoint: ActorEndpoint.popularActor.rawValue,
                        completion: completion)
    }
}
