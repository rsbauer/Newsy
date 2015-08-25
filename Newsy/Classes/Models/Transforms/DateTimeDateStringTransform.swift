//
//  DateTimeDateStringTransform.swift
//  Newsy
//
//  Created by Astro on 8/25/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

// convert "8/25/2015 00:42:20 GMT" to NSDate

public class DateTimeDateStringTransform: TransformType {
    public typealias Object = NSDate
    public typealias JSON = String
    let dateFormatter = NSDateFormatter()
    
    public init() {
        dateFormatter.dateFormat = "M/d/yyyy HH:mm:ss zzz"
    }
    
    public func transformFromJSON(value: AnyObject?) -> NSDate? {
        if let dateString = value as? String {
            return dateFormatter.dateFromString(dateString)
        }
        return nil
    }
    
    public func transformToJSON(value: NSDate?) -> String? {
        if let date = value {
            return dateFormatter.stringFromDate(date)
        }
        return nil
    }
}

