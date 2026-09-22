//
//  TabBarController.swift
//  movieApp
//
//  Created by Avaz Cafarov on 18.09.26.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        let homeController = HomeController()
        homeController.tabBarItem = .init(title: nil,
                                          image: .init(systemName: "house.fill"),
                                          tag: 0)
        let homeNav = UINavigationController(rootViewController: homeController)
        
        let actorController = ActorController(viewModel: .init(manager: ActorManager()))
        actorController.tabBarItem = .init(title: nil,
                                          image: .init(systemName: "person.fill"),
                                          tag: 1)
        let actorNav = UINavigationController(rootViewController: actorController)
        
        viewControllers = [homeNav, actorNav]
    }
}
