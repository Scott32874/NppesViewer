//
//  License.swift
//  NppesViewer
//
//  Created by Scott Adams on 11/15/15.
//  Copyright © 2015 Scott Adams. All rights reserved.
//

import Foundation

struct License {
    
    let status:String?
    let state:String?
    let code:String?
    let type:String?
    
    init(licenseDictionary : [String: AnyObject]) {
        status = licenseDictionary["status"] as? String
        state = licenseDictionary["state"] as? String
        code = licenseDictionary["code"] as? String
        type = licenseDictionary["type"] as? String
    }
}
