//
//  ProjectCell.swift
//  Project-Organizer-UIKit
//
//  Created by Alejandro Hernandez on 10/05/24.
//

import UIKit

class ProjectCell: UITableViewCell {
    static let identifier: String = "projectCellIdentifier"
    
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        
    }
    
    func configure(title: String, status: Project) {}
}
