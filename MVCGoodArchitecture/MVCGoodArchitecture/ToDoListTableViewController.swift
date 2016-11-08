//
//  ToDoListTableViewController.swift
//  MVCGoodArchitecture
//
//  Created by Monika Koschel on 30.10.2016.
//  Copyright © 2016 Monika Koschel. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {

    var modelController: ModelController
    var dataSource: ToDoTableViewDataSource?
    var delegate: ToDoTableViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let definedModelController = modelController {
            dataSource = ToDoTableViewDataSource(tableView: tableView, modelController: modelController)
            delegate = ToDoTableViewDelegate(table: tableView, modelController: modelController)
        }
    }
    
    @IBAction func cancel(for unwindSegue: UIStoryboardSegue) {
        
    }
    
    @IBAction func done(for unwindSeque: UIStoryboardSegue) {
        
    }

}
