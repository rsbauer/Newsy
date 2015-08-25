//
//  ABCNFeedImage.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class ABCNFeedImage: Mappable {
    var abcn_image: ABCNImage?
    
    class func newInstance(map: Map) -> Mappable? {
        return ABCNFeedImage()
    }
    
    func mapping(map: Map) {
        abcn_image <- map["abcn:image"]
    }
}