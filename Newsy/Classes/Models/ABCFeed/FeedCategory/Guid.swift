//
//  Guid.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class Guid: Mappable {
    var isPermalink: Bool?
    var pcdata: Double?
    
    class func newInstance(map: Map) -> Mappable? {
        return Guid()
    }
    
    func mapping(map: Map) {
        isPermalink <- (map["isPermalink"], BoolTransform())
        pcdata <- map["pcdata"]
    }
}