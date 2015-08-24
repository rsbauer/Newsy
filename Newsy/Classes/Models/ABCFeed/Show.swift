//
//  Shows.swift
//  Newsy
//
//  Created by Astro on 8/24/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class Show: Mappable {
    var ref: String?
    var title: String?
    var short_title: String?
    var url: String?
    var ad_csid: String?
    var ad_kv_pageType: String?
    var ad_kv_show: String?
    var sharethroughKey: String?
    var templateType: Int?
    var external: Bool?
    var thumbnailUrl: String?
    var thumbnailUrl2x: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return Show()
    }
    
    func mapping(map: Map) {
        ref <- map["ref"]
        title <- map["title"]
        short_title <- map["short-title"]
        url <- map["url"]
        ad_csid <- map["ad-csid"]
        ad_kv_pageType <- map["ad-kv-pageType"]
        ad_kv_show <- map["ad-kv-show"]
        sharethroughKey <- map["sharethroughKey"]
        templateType <- map["templateType"]
        external <- map["external"]
        thumbnailUrl <- map["thumbnailUrl"]
        thumbnailUrl2x <- map["thumbnailUrl2x"]
    }
}
