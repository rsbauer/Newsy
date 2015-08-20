//
//  IntegerDateTransform.swift
//  Newsy
//
//  Created by Astro on 8/20/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

public class IntegerDateTransform: TransformType {
    public typealias Object = NSDate
    public typealias JSON = Double
    
    public init() {}
    
    public func transformFromJSON(value: AnyObject?) -> NSDate? {
        if let timeInt = value as? Double {
            let calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
            var year: Int = Int(timeInt / 10000)
            
            var month = Int(timeInt / 100 % 100)
            var day = Int(timeInt % 100)
            return calendar.dateWithEra(1, year: year, month: month, day: day, hour: 0, minute: 0, second: 0, nanosecond: 0)
        }
        return nil
    }
    
    public func transformToJSON(value: NSDate?) -> Double? {
        if let date = value {
            let calendar = NSCalendar.currentCalendar()
            let components = calendar.components(NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitMonth | NSCalendarUnit.CalendarUnitDay, fromDate: date)
            
            var dateString = String(format: "%04d%02d%02d", components.year, components.month, components.day)
            return (dateString as NSString).doubleValue
        }
        return nil
    }
}
