//
//  Schedule.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class Schedule: Mappable {
    var startTime: String?
    var endTime: String?
    var daypartType: String?
    var daypartName: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return Schedule()
    }
    
    func mapping(map: Map) {
        startTime <- map["startTime"]
        endTime <- map["endTime"]
        daypartType <- map["daypartType"]
        daypartName <- map["daypartName"]
    }
}