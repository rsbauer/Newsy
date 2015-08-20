//
//  MapperTests.swift
//  Newsy
//
//  Created by Astro on 8/20/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import UIKit
import XCTest
import ObjectMapper
import Newsy

class MapperTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFeedMap() {
        var jsonContent: NSDictionary = loadJson("iphoneV21.json")
        let newsFeed = Mapper<Feed>().map(jsonContent.objectForKey("config"))
        XCTAssert(newsFeed?.radioStreamConfig != nil, "Radio streaming is null")
    }

    func loadJson(fileName: String) -> NSDictionary {
        var fileContent: NSDictionary = [:]
        if let path = NSBundle.mainBundle().pathForResource(fileName, ofType: "") {
            if let data = NSData(contentsOfFile: path, options: .DataReadingMappedIfSafe, error: nil) {
                var serializationError: NSError?
                let json: AnyObject? = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments, error: &serializationError)
                
                fileContent = json as! NSDictionary

            }
        }
        
        return fileContent
    }
}
