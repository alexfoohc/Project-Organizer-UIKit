//
//  Project.swift
//  Project-Organizer-UIKit
//
//  Created by Alejandro Hernandez on 09/05/24.
//

import Foundation

enum ProjectStatus: String, Identifiable {
    case active
    case inProgress
    case done
    case archived
    case postponed
    
    var id: String {
        self.rawValue
    }
}

struct Project {
    
    var name: String
    var creationDate: Date
    var estimatedCompletionDate: Date
    var status: ProjectStatus
    var features: [Feature]
    var notes: [Note]
    var category: CategoryType
    
    
    var featuresCount: Int {
        features.count
    }
    
    var notesCount: Int {
        notes.count
    }
}
