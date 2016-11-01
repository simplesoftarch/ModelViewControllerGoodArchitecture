//
//  ModelController.swift
//  MVCGoodArchitecture
//
//  Created by Monika Koschel on 01.11.2016.
//  Copyright © 2016 Monika Koschel. All rights reserved.
//

//import Foundation

class ModelController {
    
    private(set) var toDoItems: [ToDoItem] = [ToDoItem]()
    
    func addItem(item: ToDoItem) {
        toDoItems.append(item)
    }
    
}
