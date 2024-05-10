//
//  AppCoordinator.swift
//  Project-Organizer-UIKit
//
//  Created by Alejandro Hernandez on 18/04/24.
//

import UIKit

final class AppCoordinator: Coordinator {

    var childCoordinators: [any Coordinator] = []
    var navigationController: UINavigationController = UINavigationController()

    func start() {
        let rootViewController = HomeController()
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.pushViewController(rootViewController, animated: false)
    }
    
}
