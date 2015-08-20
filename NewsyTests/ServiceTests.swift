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
 
        var newsService = NewsService()
        newsService.getNews(ABCNewsService()).response = {
            (result: AnyObject?, error: NSError?) in
                var newsFeed: Feed = result as! Feed
                XCTAssert(newsFeed.radioStreamConfig != nil, "Radio stream config is null")

                expectation.fulfill()
        }
        
        self.waitForExpectationsWithTimeout(10.0, handler: nil)
    }

    
}
