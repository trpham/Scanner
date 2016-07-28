//
//  myCell.swift
//  Scanner
//
//  Created by TruongPham on 7/27/16.
//  Copyright © 2016 NathanP. All rights reserved.
//

import UIKit

class myCell: UITableViewCell {

    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
