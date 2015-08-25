//
//  Apis.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class Apis: Mappable {
    var feedsBuildDate: String?
    var scribbleLive: String?
    var storyInlineLinkRule: String?
    var itemFullText: String?
    var search: String?

    class func newInstance(map: Map) -> Mappable? {
        return Apis()
    }

    func mapping(map: Map) {
        feedsBuildDate <- map["feedsBuildDate"]
        scribbleLive <- map["scribbleLive"]
        storyInlineLinkRule <- map["storyInlineLinkRule"]
        itemFullText <- map["itemFullText"]
        search <- map["search"]
    }
}
