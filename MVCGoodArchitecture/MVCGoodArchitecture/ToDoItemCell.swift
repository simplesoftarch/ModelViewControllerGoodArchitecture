//
//  ToDoTableViewCell.swift
//  MVCGoodArchitecture
//
//  Created by Monika Koschel on 03.11.2016.
//  Copyright © 2016 Monika Koschel. All rights reserved.
//

import UIKit

class ToDoItemCell: UITableViewCell {
    
    static let identifier = "cell"
    
    public func configure(name ofItem: String, completed: Bool) {
        textLabel?.text = ofItem
        accessoryType = completed ? UITableViewCellAccessoryType.checkmark : UITableViewCellAccessoryType.none
    }
    
}
