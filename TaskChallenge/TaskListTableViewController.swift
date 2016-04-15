//
//  TaskListTableViewController.swift
//  TaskChallenge
//
//  Created by Alex Retter on 4/15/16.
//  Copyright © 2016 ReGroup. All rights reserved.
//

import UIKit

class TaskListTableViewController: UITableViewController {

    var tasks: [Task]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tasks.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        // Configure the cell...
        let cell = tableView.dequeueReusableCellWithIdentifier("taskCell", forIndexPath: indexPath)
        let allTasks = tasks
        let task = tasks[indexPath.row]
        cell.textLabel?.text = tasks.taskName
        

        return cell
    }


}
