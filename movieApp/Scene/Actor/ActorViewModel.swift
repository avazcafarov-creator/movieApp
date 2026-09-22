//
//  ActorViewModel.swift
//  movieApp
//
//  Created by Avaz Cafarov on 20.09.26.
//

import Foundation

final class ActorViewModel {
//    let manager = ActorManager()
//    let manager = ActorMockManager()
    
    var manager: ActorManagerUseCase
    
    var items = [ActorResult]()
    
    var page = 1
    var actorData: Actor?
    
    var succes: (() -> Void)?
    var error: ((String) -> Void)?
    
    init(manager: ActorManagerUseCase) {
        self.manager = manager
    }
    
    func getActorList() {
        let page = (actorData?.page ?? 0) + 1
        manager.getPopularActors(page: "\(page)") { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
                self.actorData = data
                self.items.append(contentsOf: data.results ?? [])
                self.succes?()
            }
        }
    }
    
    func pagination(index: Int) {
        let currentPage = actorData?.page ?? 0
        let totalPages = actorData?.totalPages ?? 0
        if index > items.count - 2 && (currentPage < totalPages) {
            getActorList()
        }
    }
}
