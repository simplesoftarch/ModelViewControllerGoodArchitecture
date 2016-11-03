//
//  ToDoTableViewDataSource.swift
//  MVCGoodArchitecture
//
//  Created by Monika Koschel on 03.11.2016.
//  Copyright © 2016 Monika Koschel. All rights reserved.
//

import UIKit

class ToDoTableViewDataSource: NSObject {
    let modelController: ModelController
    
    init(tableView: UITableView, modelController controller: ModelController) {
        self.modelController = controller
        super.init()
        tableView.dataSource = self
    }
}

extension ToDoTableViewDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelController.toDoItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = modelController.toDoItems[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: ToDoItemCell.identifier, for: indexPath) as! ToDoItemCell
        cell.configure(name: item.name, completed: item.completed)
        return cell
    }
    
}
