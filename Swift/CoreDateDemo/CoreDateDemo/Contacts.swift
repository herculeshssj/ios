//
//  Contacts.swift
//  CoreDateDemo
//
//  Created by Hércules SantAna da Silva José on 4/3/16.
//  Copyright © 2016 HSlife. All rights reserved.
//

import Foundation
import CoreData


class Contacts: NSManagedObject {

    @NSManaged var name: String
    @NSManaged var phone: String
    @NSManaged var address: String

}
