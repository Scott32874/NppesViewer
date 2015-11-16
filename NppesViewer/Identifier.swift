//
//  Identifier.swift
//  NppesViewer
//
//  Created by Scott Adams on 11/15/15.
//  Copyright © 2015 Scott Adams. All rights reserved.
//

import Foundation

struct Identifier {
    
    let code: String?
    let state: String?
    let identifier: String?
    let issuer: String?
    
    init(identifierDictionary : [String: AnyObject]) {
        code = identifierDictionary["code"] as? String
        state = identifierDictionary["state"] as? String
        identifier = identifierDictionary["identifier"] as? String
        issuer = identifierDictionary["issuer"] as? String
    }
}