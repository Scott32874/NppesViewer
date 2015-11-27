//
//  DetailViewController.swift
//  NppesViewer
//
//  Created by Scott Adams on 11/27/15.
//  Copyright © 2015 Scott Adams. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var npiRecord: NppesProvider?
    
    @IBOutlet weak var providerName: UILabel?
    @IBOutlet weak var providerNPINumber: UILabel?
    @IBOutlet weak var providerTypeImage: UIImageView?
    @IBOutlet weak var providerLocation: UITextView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if (npiRecord != nil) {
            providerName?.text = npiRecord?.title
            providerNPINumber?.text = npiRecord?.number
            
            
            if let locationAddress = npiRecord?.addresses[0] {
                var location = locationAddress.address_1!
                location += "\n"
                if let address2 = locationAddress.address_2  {
                    if address2.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet()) != "" {
                        location += address2
                        location += "\n"
                    }
                }
                location += "\(locationAddress.city!), \(locationAddress.state!)"
                
                providerLocation?.text = location
                
                
            }
            
            
            var typeImage = UIImage(named: "doctor.png")
            
            if let type = npiRecord!.enumeration_type{
                
                if type == "NPI-2" {
                    typeImage = UIImage(named: "hospital.png")
                }
            }
            
            providerTypeImage?.image = typeImage
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
