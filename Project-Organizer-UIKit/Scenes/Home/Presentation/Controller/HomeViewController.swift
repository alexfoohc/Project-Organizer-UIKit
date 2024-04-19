//
//  HomeViewController.swift
//  Project-Organizer-UIKit
//
//  Created by Alejandro Hernandez on 18/04/24.
//

import UIKit

protocol HomeViewControllerCoordinator: AnyObject {
    func didSelectProject(id: Int)
    
    func didSelectList(id: Int)
}

class HomeViewController: UIViewController {
    
    private let viewModel: HomeViewModel
    private let coordinator: HomeCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    init(viewModel: HomeViewModel, coordinator: HomeCoordinator? = nil) {
        self.viewModel = viewModel
        self.coordinator = coordinator
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
