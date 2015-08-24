//
//  topStory.swift
//  Newsy
//
//  Created by Astro on 8/24/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class Story: Mappable {
    var ref: String?
    var title: String?
    var url: String?
    var saturdayMorningUrl: String?
    var sundayMorningUrl: String?
    var ad_csid: String?
    var ad_kv_pageType: String?
    var ad_csid_saturdayMorningEdition: String?
    var ad_csid_sundayMorningEdition: String?
    var sharethroughKey: String?
    var templateType: Int?
    var thumbnailUrl: String?
    var thumbnailUrl2x: String?
    var refreshRate: Int?
    
    class func newInstance(map: Map) -> Mappable? {
        return Story()
    }
    
    func mapping(map: Map) {
        ref <- map["ref"]
        title <- map["title"]
        url <- map["url"]
        saturdayMorningUrl <- map["saturdayMorningUrl"]
        sundayMorningUrl <- map["sundayMorningUrl"]
        ad_csid <- map["ad-csid"]
        ad_kv_pageType <- map["ad-kv-pageType"]
        ad_csid_saturdayMorningEdition <- map["ad-csid-saturdayMorningEdition"]
        ad_csid_sundayMorningEdition <- map["ad-csid-sundayMorningEdition"]
        sharethroughKey <- map["sharethroughKey"]
        templateType <- map["templateType"]
        thumbnailUrl <- map["thumbnailUrl"]
        thumbnailUrl2x <- map["thumbnailUrl2x"]
        refreshRate <- map["refreshRate"]
    }
}