//
//  ABCNVideo.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class ABCNVideo: Mappable {
    
    var abcn_video: NSDictionary?
    
    class func newInstance(map: Map) -> Mappable? {
        return ABCNVideo()
    }

    func mapping(map: Map) {
        abcn_video <- map["abcn:video"]
    }
}