//
//  ABCNewsStoryService.swift
//  Newsy
//
//  Created by Astro on 8/26/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class ABCNewsStoryService: NewsServiceProtocol {
    var storyUrl: String = ""
    
    init(storyUrl: String) {
        self.storyUrl = storyUrl
    }
    
    func url() -> String {
        return self.storyUrl
    }
    
    func returnType() -> AnyObject {
        return FeedCategory()
    }
    
    func mapResult(json: AnyObject?) -> AnyObject? {
        let jsonDictionary:NSDictionary = json as! NSDictionary
        if let newsFeed = Mapper<FeedCategory>().map(jsonDictionary) {
            return newsFeed
        }
        
        return FeedCategory()
    }
}