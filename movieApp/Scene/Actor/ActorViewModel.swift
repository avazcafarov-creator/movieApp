//
//  ActorViewModel.swift
//  movieApp
//
//  Created by Avaz Cafarov on 20.09.26.
//

import Foundation

final class ActorViewModel {
    let manager = ActorManager()
    var items = [ActorResult]()
    
    var succes: (() -> Void)?
    var error: ((String) -> Void)?
    
    func getActorList() {
        manager.getPopularActors { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
                self.items = data.results ?? []
                self.succes?()
            }
        }
    }
}
