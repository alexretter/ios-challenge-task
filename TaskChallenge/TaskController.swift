//
//  TaskController.swift
//  TaskChallenge
//
//  Created by Alex Retter on 4/15/16.
//  Copyright © 2016 ReGroup. All rights reserved.
//

import Foundation
import CoreData

class TaskController {
    
    let context = NSManagedObjectContext()
    
    var tasks: Task
    
    static let sharedController = TaskController()
    
    func fetchAllTasksInContext() -> [Task] {
        
        let request = NSFetchRequest(entityName: "Task")
        
        do {
            
            let tasks = try context.executeFetchRequest(request) as! [Task]
            print("FETCHING TASKS SUCCEEDED")
            return tasks
        } catch {
            print("COULDNT FETCH DECKS")
            return []
        }
    }
    
    func saveToPersistentStore() {
        
        try Stack.sharedStack.managedObjectContext.save()
      print("SUCCESS SAVING")
    } catch let error as NSError {
    
        print("Error saving \(error.localizedDescription) -> \(__FUNCTION__)")
    
    }
    
    func insertTaskIntoContext(context: NSManagedObjectContext) -> Task {
        return NSEntityDescription.insertNewObjectForEntityForName("Task", inManagedObjectContext: context) as! Task
        
    }
    
    
    func removeDeckFromContext(task: Task, completion: (success: Bool) -> Void ) {
        let moc = Stack.sharedStack.managedObjectContext
        moc.deleteObject(task)
        do {
            try moc.save()
            print("success")
            completion(success: true)
        } catch let error as NSError {
            print(error.localizedDescription)
            completion(success: false)
      
        }
    }
}