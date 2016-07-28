//
//  Food.swift
//  Scanner
//
//  Created by TruongPham on 7/27/16.
//  Copyright © 2016 NathanP. All rights reserved.
//

import Foundation

class Food {
    var imageName = ""
    var description = ""
    var moreInfo = ""
    
    init(imageName: String, description: String, moreInfo: String) {
        self.imageName = imageName
        self.description = description
        self.moreInfo = moreInfo
    }
}
