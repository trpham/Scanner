//
//  DetailViewController.swift
//  Scanner
//
//  Created by TruongPham on 7/27/16.
//  Copyright © 2016 NathanP. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var detailImage: UIImageView!
    @IBOutlet var detailLabel: UILabel!
    @IBOutlet var moreInfoLabel: UILabel!
    
    var imageDetail = ""
    var descriptionLabel = ""
    var moreInfoDetail = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailImage.image = UIImage(named: imageDetail)
        detailLabel.text = descriptionLabel
        moreInfoLabel.text = moreInfoDetail
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
