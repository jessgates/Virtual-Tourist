//
//  Photo+CoreDataProperties.swift
//  Virtual Tourist
//
//  Created by Jess Gates on 11/29/16.
//  Copyright © 2016 Jess Gates. All rights reserved.
//

import Foundation
import CoreData


extension Photo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo");
    }

    @NSManaged public var photoData: NSData?
    @NSManaged public var photoURL: String?
    @NSManaged public var pin: Pin?

}
