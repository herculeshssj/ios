//
//  ViewController.swift
//  CoreDateDemo
//
//  Created by Hércules SantAna da Silva José on 4/3/16.
//  Copyright © 2016 HSlife. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext

    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveContact(sender: AnyObject) {
        let entityDescription = NSEntityDescription.entityForName("Contacts", inManagedObjectContext: managedObjectContext)
        
        let contact = Contacts(entity: entityDescription!, insertIntoManagedObjectContext: managedObjectContext)
        
        contact.name = txtName.text!
        contact.address = txtAddress.text!
        contact.phone = txtPhone.text!
        
        do {
            try managedObjectContext.save()
            
            txtName.text = ""
            txtAddress.text = ""
            txtPhone.text = ""
            lblResult.text = "Contact Saved"
            
        } catch {
            lblResult.text = "Error on saving"
        }
    }
    
    @IBAction func findContact(sender: AnyObject) {
        let entityDescription = NSEntityDescription.entityForName("Contacts", inManagedObjectContext: managedObjectContext)
        
        let request = NSFetchRequest()
        request.entity = entityDescription
        
        let pred = NSPredicate(format: "(name = %@)", txtName.text!)
        request.predicate = pred
        
        do {
            let objects = try managedObjectContext.executeFetchRequest(request)
            
            let results = objects
            
            if results.count > 0 {
                let match = results[0] as! NSManagedObject
                txtName.text = match.valueForKey("name") as? String
                txtAddress.text = match.valueForKey("address") as? String
                txtPhone.text = match.valueForKey("phone") as? String
                lblResult.text = "Matches found: \(results.count)"
            } else {
                lblResult.text = "No Match"
            }
            
            
        } catch {
            lblResult.text = "Erro on searching"
        }
    }
}

