//
//  TaxonomyLicense.swift
//  NppesViewer
//
//  Created by Scott Adams on 11/15/15.
//  Copyright © 2015 Scott Adams. All rights reserved.
//

import Foundation

struct TaxonomyLicense {
    
    let taxonomy_code: String?
    let license_code: String?
    
    init(taxonomyLicenseDictionary: [String: AnyObject]) {
        taxonomy_code = taxonomyLicenseDictionary["taxonomy_code"] as? String
        license_code = taxonomyLicenseDictionary["license_code"] as? String
    }
}
