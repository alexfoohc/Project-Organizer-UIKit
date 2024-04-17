//
//  CategoryCardCollectionViewDataSource.swift
//  Project-Organizer-UIKit
//
//  Created by Alejandro Hernandez on 16/04/24.
//

import UIKit

class CategoryCardCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    
    var data: [Category] = []
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.reusableIdentifier, for: indexPath) as! CollectionViewCell
        cell.configure(withTitle: data[indexPath.row].name, itemCount: data[indexPath.row].count)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    
    
}
