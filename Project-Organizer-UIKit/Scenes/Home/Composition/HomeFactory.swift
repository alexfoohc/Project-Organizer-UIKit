//
//  HomeFactory.swift
//  Project-Organizer-UIKit
//
//  Created by Alejandro Hernandez on 18/04/24.
//

import UIKit

struct HomeFactory {
    
    func makeHomeViewController(coordinator: HomeCoordinator) -> UIViewController {
        let viewModel = HomeViewModel()
        let viewController = HomeViewController(viewModel: viewModel, coordinator: coordinator)
        viewController.title = Constants.kHomeVCTitle
        return viewController
    }
}
