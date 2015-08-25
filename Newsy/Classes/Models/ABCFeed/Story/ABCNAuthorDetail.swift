//
//  ABCNAuthorDetail.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class ABCNAuthorDetail: Mappable {
    var abcn_author_name: String?
    

    class func newInstance(map: Map) -> Mappable? {
        return ABCNAuthorDetail()
    }
    
    func mapping(map: Map) {
        abcn_author_name <- map["abcn:author-name"]
    }
}