//
//  ABCNews.swift
//  Newsy
//
//  Created by Astro on 8/20/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class ABCNewsService: NewsServiceProtocol {
    
    func url() -> String {
        var feedURL = ""
        var feedsPlist: NSDictionary?
        if let path = NSBundle.mainBundle().pathForResource("feeds", ofType: "plist") {
            feedsPlist = NSDictionary(contentsOfFile: path)
        }
        
        if let feedDictionary = feedsPlist {
            feedURL = feedDictionary.objectForKey("iphone") as! String
        }
        
        return feedURL
    }
    
    func returnType() -> AnyObject {
        return Feed()
    }
    
    func mapResult(json: AnyObject?) -> AnyObject? {
        let jsonDictionary:NSDictionary = json as! NSDictionary
        if let newsFeed = Mapper<Feed>().map(jsonDictionary.objectForKey("config")) {
            return newsFeed
        }
        
        return Feed()
    }
}