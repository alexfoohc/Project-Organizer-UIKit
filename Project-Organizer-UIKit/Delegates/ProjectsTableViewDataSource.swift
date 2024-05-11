//
//  ProjectCellTableViewDataSource.swift
//  Project-Organizer-UIKit
//
//  Created by Alejandro Hernandez on 10/05/24.
//

import UIKit

class ProjectsTableViewDataSource: NSObject, UITableViewDataSource {
    
    let tableView: UITableView
    var data: [Project]
    
    init(tableView: UITableView, data: [Project]) {
        self.tableView = tableView
        self.data = data
        
        super.init()
        tableView.register(ProjectCell.self, forCellReuseIdentifier: ProjectCell.identifier)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProjectCell.identifier, for: indexPath) as! ProjectCell
        
        
        return cell
    }
    
}
