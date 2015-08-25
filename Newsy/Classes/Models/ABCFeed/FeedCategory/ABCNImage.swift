//
//  ABCNImage.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class ABCNImage: Mappable {
    var type: String?
    var url: String?
    var height: Int?
    var width: Int?
    var imagecredit: String?
    var imagecaption: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return ABCNImage()
    }
    
    func mapping(map: Map) {
        type <- map["type"]
        url <- map["url"]
        height <- map["height"]
        width <- map["width"]
        imagecredit <- map["imagecredit"]
        imagecaption <- map["imagecaption"]
    }
}