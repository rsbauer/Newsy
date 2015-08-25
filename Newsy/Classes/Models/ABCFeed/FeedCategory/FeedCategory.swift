//
//  FeedCategory.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class FeedCategory: Mappable {
    var lastBuildDate: NSDate?
    var abcn_analytics: Array<Analytics>?
    var channels: Array<Channel>?
    
    
    class func newInstance(map: Map) -> Mappable? {
        return FeedCategory()
    }
    
    func mapping(map: Map) {
        lastBuildDate <- (map["lastBuildDate"], DateStringTransform())
        abcn_analytics <- map["abcn:analytics"]
        channels <- map["channels"]
    }
}