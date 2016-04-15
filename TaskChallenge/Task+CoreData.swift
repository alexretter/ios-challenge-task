//
//  Task+CoreData.swift
//  TaskChallenge
//
//  Created by Alex Retter on 4/15/16.
//  Copyright © 2016 ReGroup. All rights reserved.
//

import Foundation
import CoreData

extension Task {
    
    @NSManaged var taskName: String
    @NSManaged var taskDescription: String
    @NSManaged var taskCompletion: Bool
}
