//
//  TaskList.swift
//  TaskChallenge
//
//  Created by Alex Retter on 4/15/16.
//  Copyright © 2016 ReGroup. All rights reserved.
//

import Foundation
import CoreData

class TaskList {
    
    convenience init(taskList: [Task], context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        
        let entity = NSEntityDescription.entityForName("TaskList", inManagedObjectContext: context)
      //  self.init(taskList: entity!, context: context)
        //self.taskList = taskList
    }
}