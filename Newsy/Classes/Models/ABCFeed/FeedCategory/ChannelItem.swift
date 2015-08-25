//
//  ChannelItem.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class ChannelItem: Mappable {
    var abcn_contentType: String?
    var pubDate: NSDate?
    var abcn_section: String?
    var byline_credit: String?
    var link: String?
    var abcn_subtitle: String?
    var social_share_link: String?
    var title: String?
    var lastModDate: NSDate?
    var description: String?
    var abcn_datalink: String?
    var slug: String?
    var abcnLogo: ABCNLogo?
    var abcnAd: ABCNAd?
    var guid: Guid?
    var abcnImages: Array<ABCNFeedImage>?
    
    class func newInstance(map: Map) -> Mappable? {
        return ChannelItem()
    }
    
    func mapping(map: Map) {
        abcn_contentType <- map["abcn:contentType"]
        pubDate <- (map["pubDate"], DateTimeDateStringTransform())
        abcn_section <- map["abcn:section"]
        byline_credit <- map["byline-credit"]
        link <- map["link"]
        abcn_subtitle <- map["abcn:subtitle"]
        social_share_link <- map["social-share-link"]
        title <- map["title"]
        lastModDate <- (map["lastModDate"], DateTimeDateStringTransform())
        description <- map["description"]
        abcn_datalink <- map["abcn:datalink"]
        slug <- map["slug"]
        abcnLogo <- map["abcn:logo"]
        abcnAd <- map["abcn:ad"]
        guid <- map["guid"]
        abcnImages <- map["abcn:images"]
    }
}