//
//  Address.swift
//  NppesViewer
//
//  Created by Scott Adams on 11/15/15.
//  Copyright © 2015 Scott Adams. All rights reserved.
//

import Foundation

struct Address {
    
    let address_1:String?
    let address_2:String?
    let city:String?
    let state:String?
    let zip:String?
    let country_code:String?
    let address_type:String?
    let us_telephone_number:String?
    let us_fax_number:String?
    let address_purpose:String?

    init(addressDictionary: [String: AnyObject]) {
        address_1 = addressDictionary["address_1"] as? String
        address_2 = addressDictionary["address_2"] as? String
        city = addressDictionary["city"] as? String
        state = addressDictionary["state"] as? String
        zip = addressDictionary["zip"] as? String
        country_code = addressDictionary["country_code"] as? String
        address_type = addressDictionary["address_type"] as? String
        us_telephone_number = addressDictionary["us_telephone_number"] as? String
        us_fax_number = addressDictionary["us_fax_number"] as? String
        address_purpose = addressDictionary["address_purpose"] as? String    
    }
}