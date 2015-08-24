//
//  BoolTransform.swift
//  Newsy
//
//  Created by Astro on 8/24/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

public class BoolTransform: TransformType {
    public typealias Object = Bool
    public typealias JSON = String
    
    public init() {}
    
    public func transformFromJSON(value: AnyObject?) -> Bool? {
        if let boolString = value as? String {
            if boolString.lowercaseString == "true" {
                return true
            }
        }
        return false
    }
    
    public func transformToJSON(value: Bool?) -> String? {
        if let bool = value {
            if bool {
                return "true"
            }
        }
        return "false"
    }
}
