//
//  ToDoTableViewDelegate.swift
//  MVCGoodArchitecture
//
//  Created by Monika Koschel on 08.11.2016.
//  Copyright © 2016 Monika Koschel. All rights reserved.
//

import UIKit

class ToDoTableViewDelegate: NSObject {
    
    let modelController: ModelController
    
    init(table tableView: UITableView, modelController: ModelController) {
        self.modelController = modelController
        super.init()
        tableView.delegate = self
    }
}

extension ToDoTableViewDelegate: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        let tappedTask = modelController.toDoItems[indexPath.row]
        tappedTask.completed = !tappedTask.completed
        tableView.reloadRows(at: [indexPath], with: UITableViewRowAnimation.none)
    }
    
}
