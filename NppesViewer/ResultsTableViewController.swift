//
//  ResultsTableViewController.swift
//  NppesViewer
//
//  Created by Scott Adams on 11/17/15.
//  Copyright © 2015 Scott Adams. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController {
    
    var resultsArray : [NppesProvider] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let service = NppesProviderService();
        
        service.getNppesProviderByState("KY") {
            (let providers) in
            if let results = providers {
                self.resultsArray = results
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.tableView.reloadData()
                })
            }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.resultsArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> NpiViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("providerCell", forIndexPath: indexPath) as! NpiViewCell
        
        cell.nameLabel?.text = self.resultsArray[indexPath.row].title
        cell.npiLabel?.text = self.resultsArray[indexPath.row].number
        
        var typeImage = UIImage(named: "doctor.png")
        
        if let type = self.resultsArray[indexPath.row].enumeration_type{
        
        if type == "NPI-2" {
                typeImage = UIImage(named: "hospital.png")
            }
        }
        
        cell.npiTypeImage?.image = typeImage

        return cell
    }


   
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "LoadDetails") {
            let destination = segue.destinationViewController as! DetailViewController
            
            // Pass the selected object to the new view controller.
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let selectedNPIProvider = self.resultsArray[indexPath.row]
                destination.npiRecord = selectedNPIProvider
            }
            
        }
    }
    
}
