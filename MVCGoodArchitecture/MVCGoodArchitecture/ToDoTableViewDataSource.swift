//
//  ToDoTableViewDataSource.swift
//  MVCGoodArchitecture
//
//  Created by Monika Koschel on 03.11.2016.
//  Copyright © 2016 Monika Koschel. All rights reserved.
//

import UIKit

let cellIdentifier = "cell"

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
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
//        cell.name = item.name
//        cell.completed = item.completed
//        cell.createdAt = item.creationDate
        return cell
    }
    
}
