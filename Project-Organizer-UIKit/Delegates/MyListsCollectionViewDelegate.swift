//
//  CategoryCardCollectionViewDelegate.swift
//  Project-Organizer-UIKit
//
//  Created by Alejandro Hernandez on 16/04/24.
//

import UIKit

protocol MyListsNavigationDelegate: AnyObject {
    func didSelectItem(indexPath: IndexPath)
}

class MyListsCollectionViewDelegate: NSObject, UICollectionViewDelegateFlowLayout {
    
    weak var navigationDelegate: MyListsNavigationDelegate?
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.kCategoryCardWidth, height: Constants.kCategoryCardHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 25
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Item selected: \(indexPath.row)")
        navigationDelegate?.didSelectItem(indexPath: indexPath)
        
    }
}
