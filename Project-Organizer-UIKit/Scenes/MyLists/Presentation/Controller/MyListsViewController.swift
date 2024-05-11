//
//  MyListsViewController.swift
//  Project-Organizer-UIKit
//
//  Created by Alejandro Hernandez on 16/04/24.
//

import UIKit

class MyListsViewController: UIViewController {
    
    weak var coordinator: AppCoordinator?
    var collectionView: UICollectionView!
    var collectionDelegate: MyListsCollectionViewDelegate!
    var collectionDataSource: MyListsCollectionViewDataSource!
    
    let mockUpData: [Category] = [Category(name: CategoryType.personal.rawValue, count: 0),
                                  Category(name: CategoryType.business.rawValue, count: 2),
                                  Category(name: CategoryType.todo.rawValue, count: 4)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCollectionView()
        self.view.backgroundColor = .white
        self.title = Constants.kMyListsTitle
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    private func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 0 // Adjust spacing between cells as needed
        layout.minimumLineSpacing = 0 // Adjust spacing between rows as needed
        layout.sectionInset = UIEdgeInsets(top: 32, left: 32, bottom: 32, right: 32)
        //        layout.itemSize = CGSize(width: 100, height: 60) // Set fixed size for cells
        
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.reusableIdentifier)
        
        
        collectionDelegate = MyListsCollectionViewDelegate()
        collectionDelegate.navigationDelegate = self
        collectionDataSource = MyListsCollectionViewDataSource()
        collectionDataSource.data = mockUpData
        
        collectionView.delegate = collectionDelegate
        collectionView.dataSource = collectionDataSource
        collectionView.allowsSelection = true
        
        view.addSubview(collectionView)
    }
    
    @objc private func addButtonTapped(_ sender: UIButton) {
        print("Button Tapped")
    }
    
}

// MARK: - CategoryCardNavigationDelegate
extension MyListsViewController: MyListsNavigationDelegate {
    func didSelectItem(indexPath: IndexPath) {
        coordinator?.pushToList()
    }
    
    
}

