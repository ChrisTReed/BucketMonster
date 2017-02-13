//
//  BucketItem.swift
//  BucketMonster
//
//  Created by Christopher Reed on 2/11/17.
//  Copyright © 2017 Christopher Reed. All rights reserved.
//

import UIKit
import Foundation

class BucketItem: NSObject {
    
    var name: String = "New Note"
    var date: Date
//    var noteText: String = ""
    
    init(name: String, date: Date) {
        self.name = name
        self.date = date
    }

    
    

}
