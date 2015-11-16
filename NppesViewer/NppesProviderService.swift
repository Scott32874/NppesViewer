//
//  ForecastService.swift
//  Stormy
//
//  Created by Pasan Premaratne on 5/13/15.
//  Copyright (c) 2015 Treehouse. All rights reserved.
//

import Foundation

struct NppesProviderService {
    
    let nppesBaseURL: NSURL?
    
    init() {
        nppesBaseURL = NSURL(string: "https://registry.npi.io/search/api/public/nppes/")
    }
    
    func getNppesProviderByState(state:String, completion: ([NppesProvider]? -> Void)) {
        
        if let nppesProviderURL = NSURL(string: "pjson.json?addresses.state=\(state)", relativeToURL: nppesBaseURL) {
            let networkOperation = NetworkOperation(url: nppesProviderURL)
            
            networkOperation.downloadJSONFromURL {
                (let JSONDictionary) in
                let nppesProviders = self.nppesProviderArrayFromJSONDictionary(JSONDictionary)
                completion(nppesProviders)
            }
        } else {
            print("Could not construct a valid URL")
        }
    }
    
    func nppesProviderArrayFromJSONDictionary(jsonDictionary: [String: AnyObject]?) -> [NppesProvider]? {
        
        var providerArray : [NppesProvider] = []
        
        if let nppesProviderResultDictionaries = jsonDictionary?["results"] as? [[String: AnyObject]] {
            for nppesProvider in nppesProviderResultDictionaries {
                providerArray.append(NppesProvider(nppesProviderDictionary: nppesProvider))
            }
            
        } else {
            print("JSON dictionary returned nil for currently key")
            return nil
        }
        return providerArray
    }
    
}