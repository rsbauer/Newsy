//
//  Section.swift
//  Newsy
//
//  Created by Astro on 8/24/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class Section: Mappable {
    var ref: String?
    var title: String?
    var url: String?
    var thumbnailUrl: String?
    var thumbnailUrl2x: String?
    var ad_csid: String?
    var ad_kv_pageType: String?
    var sharethroughKey: String?
    var templateType: Int?
    
    class func newInstance(map: Map) -> Mappable? {
        return Section()
    }
    
    func mapping(map: Map) {
        ref <- map["ref"]
        title <- map["title"]
        url <- map["url"]
        thumbnailUrl <- map["thumbnailUrl"]
        thumbnailUrl2x <- map["thumbnailUrl2x"]
        ad_csid <- map["ad-csid"]
        ad_kv_pageType <- map["ad-kv-pageType"]
        sharethroughKey <- map["sharethroughKey"]
        templateType <- map["templateType"]
    }
}