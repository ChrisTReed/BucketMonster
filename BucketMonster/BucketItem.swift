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
    //var desc: String = "Sample Description"
    var date: Date
//
    
    init(name: String, date: Date) {
        self.name = name
        //self.desc = desc
        self.date = date
    }

    
    

}
