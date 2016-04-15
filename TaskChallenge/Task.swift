//
//  Task.swift
//  TaskChallenge
//
//  Created by Alex Retter on 4/15/16.
//  Copyright © 2016 ReGroup. All rights reserved.
//

import Foundation
import CoreData

class Task: NSManagedObject {
    convenience init(taskName: String, taskDescription: String, taskCompletion: Bool, context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        
        let entity = NSEntityDescription.entityForName("Task", inManagedObjectContext: context)!
        
        self.init(entity: entity, insertIntoManagedObjectContext: context)
       /* self.taskName = taskName
        self.taskDescription = taskDescription
        self.taskCompletion = taskDescription */
        
        
    }
}