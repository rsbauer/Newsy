//
//  Channel.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class Channel: Mappable {
    var ref: String?
    var title: String?
    var layouttype: String?
    var items: Array<ChannelItem>?
    
    class func newInstance(map: Map) -> Mappable? {
        return Channel()
    }
    
    func mapping(map: Map) {
        ref <- map["ref"]
        title <- map["title"]
        layouttype <- map["layouttype"]
        items <- map["items"]
    }
}