//
//  ViewController.swift
//  Scanner
//
//  Created by TruongPham on 7/21/16.
//  Copyright © 2016 NathanP. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
                      UIImagePickerControllerDelegate,
                      UINavigationControllerDelegate {
   
    
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var nameField: UITextField!
    
    @IBAction func buttonPressed(sender: UIButton) {
        let nameEntered = nameField.text!
        messageLabel.text = "Hi there \(nameEntered)"
        nameField.text = ""
        nameField.resignFirstResponder()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

