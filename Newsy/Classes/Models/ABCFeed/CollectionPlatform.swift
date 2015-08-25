//
//  CollectionPlatform.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class CollectionPlatform: Mappable {
    var gnow_event_name: String?
    var push_tag_name: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return CollectionPlatform()
    }
    
    func mapping(map: Map) {
        gnow_event_name <- map["gnow-event-name"]
        push_tag_name <- map["push-tag-name"]
    }
}
