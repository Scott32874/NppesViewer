//
//  BasicIndividual.swift
//  NppesViewer
//
//  Created by Scott Adams on 11/15/15.
//  Copyright © 2015 Scott Adams. All rights reserved.
//

import Foundation

struct BasicIndividual {
    
    let status:String?
    let credential:String?
    let first_name:String?
    let last_name:String?
    let last_updated:String?
    let gender:String?
    let sole_proprietor:String?
    let enumeration_date:String?
    
    init(basicDictionary: [String: AnyObject]) {
        status = basicDictionary["status"] as? String
        credential = basicDictionary["credential"] as? String
        first_name = basicDictionary["first_name"] as? String
        last_name = basicDictionary["last_name"] as? String
        last_updated = basicDictionary["last_updated"] as? String
        gender = basicDictionary["gender"] as? String
        sole_proprietor = basicDictionary["sole_proprietor"] as? String
        enumeration_date = basicDictionary["enumeration_date"] as? String
    }
}