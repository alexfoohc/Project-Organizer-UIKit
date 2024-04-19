//
//  Coordinator.swift
//  Project-Organizer-UIKit
//
//  Created by Alejandro Hernandez on 19/04/24.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigation: UINavigationController { get set }
    func start()
}
