//
//  ToDoItem.swift
//  MVCGoodArchitecture
//
//  Created by Monika Koschel on 01.11.2016.
//  Copyright © 2016 Monika Koschel. All rights reserved.
//

import Foundation

struct ToDoItem {
    
    let name: String
    let creationDate: NSDate
    var completed: Bool
    
    init(name: String, creationDate: NSDate, completed: Bool) {
        self.name = name
        self.creationDate = creationDate
        self.completed = completed
    }
    
}
