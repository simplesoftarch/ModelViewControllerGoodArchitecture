//
//  ToDoListTableViewController.swift
//  MVCGoodArchitecture
//
//  Created by Monika Koschel on 30.10.2016.
//  Copyright © 2016 Monika Koschel. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {

    var modelController: ModelController?
    var dataSource: ToDoTableViewDataSource?
    var delegate: ToDoTableViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let definedModelController = modelController {
            dataSource = ToDoTableViewDataSource(tableView: tableView, modelController: definedModelController)
            delegate = ToDoTableViewDelegate(table: tableView, modelController: definedModelController)
        }
        tableView.register(ToDoItemCell.self, forCellReuseIdentifier: ToDoItemCell.identifier)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navigationController = segue.destination as? UINavigationController {
            if let addToDoItemViewController = navigationController.viewControllers.first as? AddToDoItemViewController {
                addToDoItemViewController.modelController = modelController
            }
        }
    }
    
    @IBAction func cancel(for unwindSegue: UIStoryboardSegue) {
        
    }
    
    @IBAction func done(for unwindSeque: UIStoryboardSegue) {
        
    }

}
