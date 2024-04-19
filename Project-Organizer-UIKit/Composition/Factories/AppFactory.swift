//
//  AppFactory.swift
//  Project-Organizer-UIKit
//
//  Created by Alejandro Hernandez on 18/04/24.
//

import UIKit

struct AppFactory {
    
    func makeHomeCoordinator(navigation: UINavigationController, delegate: HomeCoordinatorDelegate) -> Coordinator {
        let homeFactory = HomeFactory()
        let coordinator = HomeCoordinator(navigation: navigation, factory: homeFactory, delegate: delegate)
        return coordinator
    }
}
