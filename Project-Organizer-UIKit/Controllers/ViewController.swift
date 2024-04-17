//
//  ViewController.swift
//  Project-Organizer-UIKit
//
//  Created by Alejandro Hernandez on 16/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    var collectionView: UICollectionView!
    var collectionDelegate: CategoryCardCollectionViewDelegate!
    var collectionDataSource: CategoryCardCollectionViewDataSource!
    let mockUpData: [Category] = [Category(name: Categories.personal.rawValue, count: 0),
                                  Category(name: Categories.business.rawValue, count: 2),
                                  Category(name: Categories.todo.rawValue, count: 4)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCollectionView()
        
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
        
        
        collectionDelegate = CategoryCardCollectionViewDelegate()
        collectionDataSource = CategoryCardCollectionViewDataSource()
        collectionDataSource.data = mockUpData
        
        collectionView.delegate = collectionDelegate
        collectionView.dataSource = collectionDataSource
        
        view.addSubview(collectionView)
    }
    
    
}

