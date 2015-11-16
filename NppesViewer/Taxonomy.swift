//
//  Taxonomy.swift
//  NppesViewer
//
//  Created by Scott Adams on 11/15/15.
//  Copyright © 2015 Scott Adams. All rights reserved.
//

import Foundation

struct Taxonomy {
    let code:String?
    let primary: Bool?
    
    init(taxonomyDictionary: [String: AnyObject]) {
        code = taxonomyDictionary["code"] as? String
        primary = taxonomyDictionary["primary"] as? Bool
    }
}
