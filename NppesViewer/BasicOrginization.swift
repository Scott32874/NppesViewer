//
//  BasicOrginization.swift
//  NppesViewer
//
//  Created by Scott Adams on 11/15/15.
//  Copyright © 2015 Scott Adams. All rights reserved.
//

import Foundation

struct BasicOrginization {
    
    let status:String?
    let authorized_official_telephone_number:String?
    let last_updated:String?
    let authorized_official_middle_name:String?
    let sole_proprietor:String?
    let authorized_official_last_name:String?
    let organization_name:String?
    let authorized_official_title_or_position:String?
    let enumeration_date:String?
    let authorized_official_first_name:String?
    
    init(basicDictionary: [String: AnyObject]) {
        status = basicDictionary["status"] as? String
        authorized_official_telephone_number = basicDictionary["authorized_official_telephone_number"] as? String
        last_updated = basicDictionary["last_updated"] as? String
        authorized_official_middle_name = basicDictionary["authorized_official_middle_name"] as? String
        sole_proprietor = basicDictionary["sole_proprietor"] as? String
        authorized_official_last_name = basicDictionary["authorized_official_last_name"] as? String
        organization_name = basicDictionary["organization_name"] as? String
        authorized_official_title_or_position = basicDictionary["authorized_official_title_or_position"] as? String
        enumeration_date = basicDictionary["enumeration_date"] as? String
        authorized_official_first_name = basicDictionary["authorized_official_first_name"] as? String
    }

}