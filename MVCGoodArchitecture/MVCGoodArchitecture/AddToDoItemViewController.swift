//
//  AddToDoItemViewController.swift
//  MVCGoodArchitecture
//
//  Created by Monika Koschel on 30.10.2016.
//  Copyright © 2016 Monika Koschel. All rights reserved.
//

import UIKit

class AddToDoItemViewController: UIViewController {

    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var taskTitleTextField: UITextField!
    var modelController: ModelController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tappedButton = sender as? UIBarButtonItem, tappedButton != cancelButton else {
            return
        }
        guard let typedText = taskTitleTextField.text else {
            return
        }
        
        let toDoTask = ToDoItem(name: typedText, creationDate: NSDate(), completed: false)
        modelController?.addItem(item: toDoTask)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
