//
//  ServiceTests.swift
//  Newsy
//
//  Created by Astro on 8/20/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import UIKit
import XCTest
import Alamofire

extension Request {
    public func debugLog() -> Self {
            debugPrint(self)
        return self
    }
}

class ServiceTests: XCTestCase {
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFeedCall() {
        var expectation = self.expectationWithDescription("Fetch News")
        
        var feedURL = ""
        var feedsPlist: NSDictionary?
        if let path = NSBundle.mainBundle().pathForResource("feeds", ofType: "plist") {
            feedsPlist = NSDictionary(contentsOfFile: path)
        }
        
        if let feedDictionary = feedsPlist {
            feedURL = feedDictionary.objectForKey("iphone") as! String
        }
        
        if feedURL != "" {
            Alamofire.request(.GET, feedURL)
                .debugLog()
                .response {
                    (request, response, data, error) in
                    
                    if(error == nil) {
                        var serializationError: NSError?
                        let json: AnyObject? = NSJSONSerialization.JSONObjectWithData(data! as NSData, options: NSJSONReadingOptions.AllowFragments, error: &serializationError)
                        
                        println(json)
                        let jsonDictionary:NSDictionary = json as! NSDictionary

                        if jsonDictionary.objectForKey("config") == nil {
                            XCTAssert(false, "Not enough json data")
                        }
                    }
                    else {
                        // something bad happened here
                        XCTAssert(false, "Request failed.")
                    }
                    
                    expectation.fulfill()
                }
        }
        else {
            XCTAssert(false, "feedURL is empty")
        }
        
        self.waitForExpectationsWithTimeout(10.0, handler: nil)
        
    }

    
}
