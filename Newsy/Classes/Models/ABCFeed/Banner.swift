//
//  Banner.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class Banner: Mappable {
    var slid: String?
    var width: String?
    var height: String?
    var cd: String?
    var slau: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return Banner()
    }

    func mapping(map: Map) {
        slid <- map["slid"]
        width <- map["width"]
        height <- map["height"]
        cd <- map["cd"]
        slau <- map["slau"]
    }
}