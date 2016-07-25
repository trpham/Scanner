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
    
    var correct = arc4random_uniform(5)
    
    @IBOutlet var message: UILabel!

    @IBOutlet var guessField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(correct)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func checkButton(sender: UIButton) {
        let guess = guessField.text!
        let correctGuess = String(correct)
        guessField.text = ""
        guessField.resignFirstResponder()
        
        if guess == correctGuess {
            message.text = "Correct answer."
            message.textColor = UIColor.greenColor()
        } else {
            message.text = "Wrong answer, try Again."
            message.textColor = UIColor.redColor()
        }
    }
}

