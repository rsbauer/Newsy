//
//  Ad.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class Ad: Mappable {
    var networkID: String?
    var playerProfile: String?
    var domainName: String?
    var videoFallbackID: String?
    var displayFallbackID: String?
    var live_video_ad_csid: String?
    var banner: Banner?

    class func newInstance(map: Map) -> Mappable? {
        return Ad()
    }
    
    func mapping(map: Map) {
        networkID <- map["networkID"]
        playerProfile <- map["playerProfile"]
        domainName <- map["domainName"]
        videoFallbackID <- map["videoFallbackID"]
        displayFallbackID <- map["displayFallbackID"]
        live_video_ad_csid <- map["live-video-ad-csid"]
        banner <- map["banner"]
    }
}