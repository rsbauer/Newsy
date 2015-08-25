//
//  InboxAnalytics.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class Analytics: Mappable {
    var abcn_analytics_pageName: String?
    var abcn_analytics_eVar16: String?
    var abcn_analytics_channel: String?
    var abcn_analytics_events: String?
    var abcn_analytics_prop1: String?
    var abcn_analytics_eVar10: String?
    var abcn_analytics_prop4: String?
    var abcn_analytics_prop5: String?
    var abcn_analytics_prop6: String?
    var abcn_analytics_eVar17: String?

    class func newInstance(map: Map) -> Mappable? {
        return Analytics()
    }

    func mapping(map: Map) {
        abcn_analytics_pageName <- map["abcn:analytics-pageName"]
        abcn_analytics_eVar16 <- map["abcn:analytics-eVar16"]
        abcn_analytics_channel <- map["abcn:analytics-channel"]
        abcn_analytics_events <- map["abcn:analytics-events"]
        abcn_analytics_prop1 <- map["abcn:analytics-prop1"]
        abcn_analytics_eVar10 <- map["abcn:analytics-eVar10"]
        abcn_analytics_prop4 <- map["abcn:analytics-prop4"]
        abcn_analytics_prop5 <- map["abcn:analytics-prop5"]
        abcn_analytics_prop6 <- map["abcn:analytics-prop6"]
        abcn_analytics_eVar17 <- map["abcn:analytics-eVar17"]
    }
    
}