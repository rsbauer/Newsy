//
//  BaseNewsService.swift
//  Newsy
//
//  Created by Astro on 8/20/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import Alamofire

protocol NewsServiceProtocol {
    func url() -> String
    func mapResult(json: AnyObject?) -> AnyObject?
}

class NewsService {

    var response: ((result: AnyObject?, error: NSError?) -> ())!
    
    func getNews<T: NewsServiceProtocol>(newsService: T) -> NewsService {
        var feedURL: String = newsService.url()
        
        Alamofire.request(.GET, feedURL)
            .response {
                (request, response, data, error) in
                
                if error == nil {
                    var serializationError: NSError?
                    let json: AnyObject? = NSJSONSerialization.JSONObjectWithData(data! as NSData, options: NSJSONReadingOptions.AllowFragments, error: &serializationError)
                    
                    var result: AnyObject? = newsService.mapResult(json)
                    
                    self.response(result: result, error: error)
                }
                else {
                    // error - something bad happened here
                    self.response(result: nil, error: error)
                }
        }
        
        return self
    }

}