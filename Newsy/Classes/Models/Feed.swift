//
//  Feed.swift
//  Newsy
//
//  Created by Astro on 8/20/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class Feed: Mappable {
    
    var radioStreamConfig: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return Feed()
    }
    
    func mapping(map: Map) {
        radioStreamConfig <- map["radio-stream-config"]
    }
    
}
