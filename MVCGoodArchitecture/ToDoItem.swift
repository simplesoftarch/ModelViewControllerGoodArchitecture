//
//  ToDoItem.swift
//  MVCGoodArchitecture
//
//  Created by Monika Koschel on 01.11.2016.
//  Copyright © 2016 Monika Koschel. All rights reserved.
//

import Foundation

class ToDoItem: NSObject, NSCoding {
    
    let name: String
    let creationDate: NSDate
    var completed: Bool
    
    init(name: String, creationDate: NSDate, completed: Bool) {
        self.name = name
        self.creationDate = creationDate
        self.completed = completed
    }
    
    required init(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as! String
        creationDate = aDecoder.decodeObject(forKey: "creationDate") as! NSDate
        completed = aDecoder.decodeObject(forKey: "completed") as! Bool
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(creationDate, forKey: "creationDate")
        aCoder.encode(completed, forKey: "completed")
    }
    
    
}
