//
//  ViewController.swift
//  MyLog
//
//  Created by Hércules SantAna da Silva José on 4/16/16.
//  Copyright © 2016 HSlife. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // Retrieve the managedObjectContext from AppDelegate
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    var logTableView = UITableView(frame: CGRectZero, style: .Plain)
    
    var logItems = [LogItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
        let moc = self.managedObjectContext
            
        let items = [
            ("Best Animal", "Dog"),
            ("Best Language", "Swift"),
            ("Worst Animal", "Cthulu"),
            ("Worst Language", "LOLCODE")
        ]
            
        for (itemTitle, itemText) in items {
            LogItem.createInManagedObjectContext(moc, title: itemTitle, text: itemText)
        }
        */
        var viewFrame = self.view.frame
        
        let addButton = UIButton(frame: CGRectMake(0,UIScreen.mainScreen().bounds.size.height - 44, UIScreen.mainScreen().bounds.size.width, 44))
        
        addButton.setTitle("+", forState: .Normal)
        addButton.backgroundColor = UIColor(red: 0.5, green: 0.9, blue: 0.5, alpha: 1.0)
        addButton.addTarget(self, action: #selector(ViewController.addNewItem), forControlEvents: .TouchUpInside)
        self.view.addSubview(addButton)
        
        viewFrame.origin.y += 20
        viewFrame.size.height -= (20 + addButton.frame.size.height)
        logTableView.frame = viewFrame
            
        self.view.addSubview(logTableView)
        logTableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "LogCell")
        logTableView.dataSource = self
        logTableView.delegate = self
            
        fetchLog()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 5
        return logItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCellWithIdentifier("LogCell")! as UITableViewCell
        //cell.textLabel?.text = "\(indexPath.row)"
        //return cell
        let cell = tableView.dequeueReusableCellWithIdentifier("LogCell")! as UITableViewCell
        
        let logItem = logItems[indexPath.row]
        
        cell.textLabel?.text = logItem.title
        
        return cell
    }
    
    func fetchLog() {
        do {
            let fetchRequest = NSFetchRequest(entityName: "LogItem")
            
            let sortDescriptor = NSSortDescriptor(key: "title", ascending: true)
            fetchRequest.sortDescriptors = [sortDescriptor]
            
            //let firstPredicate = NSPredicate(format: "title == %@", "Best Language")
            
            //let secondPredicate = NSPredicate(format: "title contains %@", "Worst")
            
            //let predicate = NSCompoundPredicate(type: NSCompoundPredicateType.OrPredicateType, subpredicates: [firstPredicate, secondPredicate])
            
            // Set the predicate on the fetch request
            //fetchRequest.predicate = predicate
            
            if let fetchResults = try managedObjectContext.executeFetchRequest(fetchRequest) as? [LogItem] {
                logItems = fetchResults
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let logItem = logItems[indexPath.row]
        print(logItem.itemText)
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if (editingStyle == .Delete) {
            let logItemToDelete = logItems[indexPath.row]
            
            managedObjectContext.deleteObject(logItemToDelete)
                
            self.fetchLog()
            
            logTableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        }
    }
    
    let addItemAlertViewTag = 0
    let addItemTextAlertViewTag = 1
    
    func addNewItem() {
        let titlePrompt = UIAlertController(title: "Enter Title", message: "Enter Text", preferredStyle: .Alert)
        var titleTextField: UITextField?
        
        titlePrompt.addTextFieldWithConfigurationHandler {
            (textField) -> Void in
            titleTextField = textField
            textField.placeholder = "Title"
        }
        
        titlePrompt.addAction(UIAlertAction(title: "Ok", style: .Default, handler: {
            (action) -> Void in
            if let textField = titleTextField {
                self.saveNewItem(textField.text!)
            }
        }))
        
        self.presentViewController(titlePrompt, animated: true, completion: nil)
    }
    
    func saveNewItem(title: String) {
        let newLogItem = LogItem.createInManagedObjectContext(self.managedObjectContext, title: title, text: "")
        
        self.fetchLog()
        
        if let newItemIndex = logItems.indexOf(newLogItem) {
            let newLogItemIndexPath = NSIndexPath(forRow: newItemIndex, inSection: 0)
            logTableView.insertRowsAtIndexPaths([newLogItemIndexPath], withRowAnimation: .Automatic)
        }
    }
}