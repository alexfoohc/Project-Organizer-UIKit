//
//  HomeCoordinator.swift
//  Project-Organizer-UIKit
//
//  Created by Alejandro Hernandez on 18/04/24.
//

import UIKit

class HomeCoordinator: Coordinator {
    var navigation: UINavigationController
    var childCoordinators: [Coordinator] = []
    private let factory: HomeFactory
    
    func start() {
        print("Home Coordinator initialized")
        let controller = factory.makeHomeViewController(coordinator: self)
        navigation.navigationBar.prefersLargeTitles = true
        navigation.pushViewController(controller, animated: true)
        
    }
    
    init(navigation: UINavigationController, factory: HomeFactory) {
        self.navigation = navigation
        self.factory = factory
    }
}

extension HomeCoordinator: HomeViewControllerCoordinator {
    func didSelectProject(id: Int) {
        <#code#>
    }
    
    func didSelectList(id: Int) {
        <#code#>
    }
    
    
}
