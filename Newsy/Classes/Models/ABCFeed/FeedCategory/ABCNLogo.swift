//
//  ABCNLogo.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class ABCNLogo: Mappable {
    var name: String?
    var url: String?
    var alt: String?
    var retina: String?
    var circle_logo: String?
    var circle_logo_retina: String?
    var circle_logo_hdpi: String?
    var code: String?
    var thumbnail_overlay_logo: String?
    var squeezeback_logo: String?
    
    class func newInstance(map: Map) -> Mappable? {
        return ABCNLogo()
    }

    func mapping(map: Map) {
        name <- map["name"]
        url <- map["url"]
        alt <- map["alt"]
        retina <- map["retina"]
        circle_logo <- map["circle-logo"]
        circle_logo_retina <- map["circle-logo-retina"]
        circle_logo_hdpi <- map["circle-logo-hdpi"]
        code <- map["code"]
        thumbnail_overlay_logo <- map["thumbnail-overlay-logo"]
        squeezeback_logo <- map["squeezeback-logo"]
    }
}