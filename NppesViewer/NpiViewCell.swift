//
//  NpiViewCell.swift
//  NppesViewer
//
//  Created by Scott Adams on 11/25/15.
//  Copyright © 2015 Scott Adams. All rights reserved.
//

import UIKit

class NpiViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel?
    @IBOutlet weak var npiLabel: UILabel?
    @IBOutlet weak var npiTypeImage: UIImageView?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
