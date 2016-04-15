//
//  CreateTaskViewController.swift
//  TaskChallenge
//
//  Created by Alex Retter on 4/15/16.
//  Copyright © 2016 ReGroup. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    var tasks: [Task]
    
    let newTask = Task(taskName: taskName, taskDescription: taskDescription, taskCompletion: true)

    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var taskDescriptionTextview: UITextView!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addTaskButtonTapped(sender: AnyObject) {
        
        tasks.append(newTask)
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toListView" {
            
            let destinationVC = segue.destinationViewController as? TaskListTableViewController
            
        }
    }

}
