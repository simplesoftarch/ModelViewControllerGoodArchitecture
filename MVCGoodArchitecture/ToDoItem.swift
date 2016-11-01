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
        name = aDecoder.decodeObject(forKey: CodingKeys.name.rawValue) as! String
        creationDate = aDecoder.decodeObject(forKey: CodingKeys.creationDate.rawValue) as! NSDate
        completed = aDecoder.decodeObject(forKey: CodingKeys.completed.rawValue) as! Bool
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: CodingKeys.name.rawValue)
        aCoder.encode(creationDate, forKey: CodingKeys.creationDate.rawValue)
        aCoder.encode(completed, forKey: CodingKeys.completed.rawValue)
    }
    
    enum CodingKeys: String {
        case name = "name"
        case creationDate = "creationDate"
        case completed = "completed"
    }
    
}
