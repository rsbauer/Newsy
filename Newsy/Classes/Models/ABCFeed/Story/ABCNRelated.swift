//
//  ABCNRelated.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class ABCNRelated: Mappable {
    var abcn_related: ABCNRelatedDetail?
    
    class func newInstance(map: Map) -> Mappable? {
        return ABCNRelated()
    }
    
    func mapping(map: Map) {
        abcn_related <- map["abcn:related"]
    }
}

class ABCNRelatedDetail: Mappable {
    var relatedId: Guid?
    var abcn_contentType: String?
    var url: String?
    var url_site: String?
    var title_attr: String?
    var type: String?
    var image: String?
    var retina: String?
    var credit: String?
    var pubDate_attr: NSDate?
    
    class func newInstance(map: Map) -> Mappable? {
        return ABCNRelatedDetail()
    }
    
    func mapping(map: Map) {
        relatedId <- map["id"]
        abcn_contentType <- map["abcn:contentType"]
        url <- map["url"]
        url_site <- map["url-site"]
        title_attr <- map["title-attr"]
        type <- map["type"]
        image <- map["image"]
        retina <- map["retina"]
        credit <- map["credit"]
        pubDate_attr <- (map["pubDate-attr"], DateTimeDateStringTransform())
    }
}