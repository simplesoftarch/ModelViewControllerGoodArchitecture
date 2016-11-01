//
//  ModelController.swift
//  MVCGoodArchitecture
//
//  Created by Monika Koschel on 01.11.2016.
//  Copyright © 2016 Monika Koschel. All rights reserved.
//

import Foundation

class ModelController {
    
    private static let filePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first! + "/items.txt"
    
    private(set) var toDoItems: [ToDoItem] = {
        if let items = NSKeyedUnarchiver.unarchiveObject(withFile: ModelController.filePath) as? [ToDoItem] {
            return items
        } else {
            return [ToDoItem]()
        }
    }()
    
    func addItem(item: ToDoItem) {
        toDoItems.append(item)
    }
    
    func save() {
        NSKeyedArchiver.archiveRootObject(self.toDoItems, toFile: ModelController.filePath)
    }
    
}
