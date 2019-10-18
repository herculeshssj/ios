//
//  LogItem.swift
//  MyLog
//
//  Created by Hércules SantAna da Silva José on 4/16/16.
//  Copyright © 2016 HSlife. All rights reserved.
//

import Foundation
import CoreData


class LogItem: NSManagedObject {
    
    // Insert code here to add functionality to your managed object subclass
    
    @NSManaged var itemText: String?
    @NSManaged var title: String?
    
    class func createInManagedObjectContext(moc: NSManagedObjectContext, title: String, text: String) -> LogItem {
        let newItem = NSEntityDescription.insertNewObjectForEntityForName("LogItem", inManagedObjectContext: moc) as! LogItem
        
        newItem.title = title
        newItem.itemText = text
        
        return newItem
    }
}
