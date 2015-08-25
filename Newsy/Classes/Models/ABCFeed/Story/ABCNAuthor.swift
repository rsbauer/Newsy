//
//  ABCNAuthor.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class ABCNAuthor: Mappable {
    var abcn_author: NSDictionary?
    
    class func newInstance(map: Map) -> Mappable? {
        return ABCNAuthor()
    }
    
    func mapping(map: Map) {
        abcn_author <- map["abcn:author"]
    }
}