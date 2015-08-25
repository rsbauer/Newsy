//
//  ABCNAd.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class ABCNAd: Mappable {
    var keywords: String?
    var subsection: String?
    var recipes: String?
    var show: String?
    var caid: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return ABCNAd()
    }
    
    func mapping(map: Map) {
        keywords <- map["keywords"]
        subsection <- map["subsection"]
        recipes <- map["recipes"]
        show <- map["show"]
        caid <- map["caid"]
    }
}