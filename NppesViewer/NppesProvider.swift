//
//  ProviderData.swift
//  NppesViewer
//
//  Created by Scott Adams on 11/15/15.
//  Copyright © 2015 Scott Adams. All rights reserved.
//

import Foundation

struct NppesProvider {
    
    let id: String?
    
    var basicOrganization: BasicOrginization?
    var basicIndividual: BasicIndividual?

    let created_epoch: Double?
    let title: String?
    let number: String?
    let last_updated_epoch: Double?
    let enumeration_type: String?

    var identifiers: [Identifier] = []
    var addresses: [Address] = []
    var licenses: [License] = []
    var taxonomies: [Taxonomy] = []
    var taxonomy_licenses: [TaxonomyLicense] = []
    
    
    init(nppesProviderDictionary: [String: AnyObject]) {
        id = nppesProviderDictionary["id"] as? String
        created_epoch = nppesProviderDictionary["created_epoch"] as? Double
        title  = nppesProviderDictionary["title"] as? String
        number = nppesProviderDictionary["number"] as? String
        last_updated_epoch  = nppesProviderDictionary["last_updated_epoch"] as? Double
        enumeration_type = nppesProviderDictionary["enumeration_type"] as? String
        
        if let addressesArray = nppesProviderDictionary["addresses"] as? [[String: AnyObject]] {
        
            for address in addressesArray {
                addresses.append(Address(addressDictionary: address))
            }
        }
        
        if let identifiersArray = nppesProviderDictionary["identifiers"] as? [[String: AnyObject]] {
        
            for identifier in identifiersArray {
                identifiers.append(Identifier(identifierDictionary: identifier))
            }
        }
        
        if let licenseArray = nppesProviderDictionary["licenses"] as? [[String: AnyObject]] {
        
            for license in licenseArray {
                licenses.append(License(licenseDictionary: license))
            }
        }
        
        if let taxonomyArray = nppesProviderDictionary["taxonomies"] as? [[String: AnyObject]] {
            
            for taxonomy in taxonomyArray {
                taxonomies.append(Taxonomy(taxonomyDictionary: taxonomy))
            }
        }
        
        if let taxonomyLicensesArray = nppesProviderDictionary["taxonomy_licenses"] as? [[String: AnyObject]] {

            for taxonomyLicense in taxonomyLicensesArray {
                taxonomy_licenses.append(TaxonomyLicense(taxonomyLicenseDictionary: taxonomyLicense))
            }
        }
        
        if let basicDictionary = nppesProviderDictionary["basic"] as? [String: AnyObject] {

        
            switch enumeration_type! {
            case "NPI-1":
                basicIndividual = BasicIndividual(basicDictionary: basicDictionary)
        
            case "NPI-2":
                basicOrganization = BasicOrginization(basicDictionary: basicDictionary)
            default:
                print("NPI type unknown")
            }
        }
        
        
        
        
        
//        if let humidityFloat = weatherDictionary["humidity"] as? Double {
//            humidity = Int(humidityFloat * 100)
//        } else {
//            humidity = nil
//        }
//        
//        if let precipFloat = weatherDictionary["precipProbability"] as? Double {
//            precipProbability = Int(precipFloat * 100)
//        } else {
//            precipProbability = nil
//        }
//        
//        summary = weatherDictionary["summary"] as? String
//        
//        if let iconString = weatherDictionary["icon"] as? String,
//            let weatherIcon: Icon = Icon(rawValue: iconString) {
//                icon = weatherIcon.toImage()
//        }
    }
}
