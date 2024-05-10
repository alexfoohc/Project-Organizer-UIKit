//
//  AppCoordinator.swift
//  Project-Organizer-UIKit
//
//  Created by Alejandro Hernandez on 18/04/24.
//

import UIKit

class AppCoordinator: Coordinator {

//    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController = UINavigationController()
    
    func start() {
        let rootViewController = HomeController()
        rootViewController.coordinator = self
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.pushViewController(rootViewController, animated: false)
    }
 
    func pushToList() {
        let viewController = ListDetailViewController()
        viewController.coordinator = self
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.pushViewController(viewController, animated: true)
    }
}
