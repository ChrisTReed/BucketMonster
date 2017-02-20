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
    var desc: String
    var date: Date
    var lat: Float
    var lon: Float
    var done: Bool
//
    
    init(name: String, desc: String, lat: Float, lon: Float, date: Date, done: Bool) {
        self.name = name
        self.desc = desc
        self.lat = lat
        self.lon = lon
        self.date = date
        self.done = false
    }

    
    

}
