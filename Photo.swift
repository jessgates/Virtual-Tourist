//
//  Photo+CoreDataClass.swift
//  Virtual Tourist
//
//  Created by Jess Gates on 11/29/16.
//  Copyright © 2016 Jess Gates. All rights reserved.
//

import Foundation
import CoreData

@objc(Photo)
public class Photo: NSManagedObject {
    
    convenience init(photoURL: String, photoData: NSData, context: NSManagedObjectContext) {
        
        // An EntityDescription is an object that has access to all
        // the information you provided in the Entity part of the model
        // you need it to create an instance of this class.
        if let entity = NSEntityDescription.entity(forEntityName: "Photo", in: context) {
            self.init(entity: entity, insertInto: context)
            self.photoURL = photoURL
            self.photoData = photoData
        } else {
            fatalError("Unable to find Entity name!")
        }
    }
    
}
