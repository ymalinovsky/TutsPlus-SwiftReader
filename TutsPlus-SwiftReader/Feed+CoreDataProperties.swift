//
//  Feed+CoreDataProperties.swift
//  TutsPlus-SwiftReader
//
//  Created by Yan Malinovsky on 19.09.16.
//  Copyright © 2016 Yan Malinovsky. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Feed {

    @NSManaged var title: String?
    @NSManaged var url: String?
    @NSManaged var articles: NSSet?

}
