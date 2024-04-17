//
//  Category.swift
//  Project-Organizer-UIKit
//
//  Created by Alejandro Hernandez on 16/04/24.
//

import Foundation

enum Categories: String {
    case personal = "Personal"
    case business = "Business"
    case todo = "ToDo"
}

struct Category {
    let name: String
    let count: Int
    
    init(name: String, count: Int) {
        self.name = name
        self.count = count
    }
}
