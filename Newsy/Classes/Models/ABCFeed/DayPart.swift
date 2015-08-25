//
//  DayPart.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class DayPart: Mappable {
    var dayPartId: String?
    var day: String?
    var schedule: Array<Schedule>?
    
    class func newInstance(map: Map) -> Mappable? {
        return DayPart()
    }
    
    func mapping(map: Map) {
        dayPartId <- map["id"]
        day <- map["day"]
        schedule <- map["schedule"]
    }
}
