//
//  Event.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class Event: Mappable {
    var eventId: String?
    var contentType: String?
    var contentSection: String?
    var videoPlayerLocation: String?
    var event: String?
    var eventThreshold: String?
    var collectionPlatforms: CollectionPlatform?
    
    class func newInstance(map: Map) -> Mappable? {
        return Event()
    }
    
    func mapping(map: Map) {
        eventId <- map["id"]
        contentType <- map["contentType"]
        contentSection <- map["contentSection"]
        videoPlayerLocation <- map["videoPlayerLocation"]
        event <- map["event"]
        eventThreshold <- map["eventThreshold"]
        collectionPlatforms <- map["collectionPlatforms"]
    }
}