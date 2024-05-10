//
//  CollectionViewCell.swift
//  Project-Organizer-UIKit
//
//  Created by Alejandro Hernandez on 16/04/24.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var titleLabel: UILabel!
    var count: UILabel!
    static let reusableIdentifier = "categoryCardCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Setup UI
        setupUI()
        
        // Add constraints to UI elements
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(withTitle title: String, itemCount: Int) {
        titleLabel.text = title
        count.text = String(itemCount)
    }
    
    private func setupConstraints() {
        let constraints = [
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 11),
            titleLabel.heightAnchor.constraint(equalToConstant: 30),
            count.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            count.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -9),
            count.heightAnchor.constraint(equalToConstant: 44)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupUI() {
        // Initializing UI Elements
        titleLabel = UILabel(frame: contentView.bounds)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .center
        titleLabel.font = .systemFont(ofSize: 14, weight: .medium)
        contentView.addSubview(titleLabel)
        
        count = UILabel(frame: contentView.bounds)
        count.translatesAutoresizingMaskIntoConstraints = false
        count.textAlignment = .center
        count.font = .systemFont(ofSize: 36, weight: .bold)
        contentView.addSubview(count)
        
        // Configure cell background and shadow
        backgroundColor = .white
        layer.masksToBounds = false
        layer.cornerRadius = Constants.kCategoryCardRadius
        self.layer.shadowColor = Constants.kCategoryShadowColor
        self.layer.shadowRadius = Constants.kCategoryShadowRadius
        self.layer.shadowOpacity = Constants.kCategoryShadowOpacity
        self.layer.shadowOffset = Constants.kCategoryShadowOffset
    }
}
