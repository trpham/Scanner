//
//  ViewController.swift
//  Scanner
//
//  Created by TruongPham on 7/21/16.
//  Copyright © 2016 NathanP. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,
                      UIImagePickerControllerDelegate,
                      UINavigationControllerDelegate {
    
    var fruits = ["Pick a Fruit", "Apples", "Oranges", "Lemons", "Limes", "Blueberries"]
    
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "fruits.jpg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fruits.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fruits[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let fruitSelected = fruits[row]
        switch (fruitSelected) {
        case "Apples":
            imageView.image = UIImage(named: "apples.jpg")
            infoLabel.text = "These apples are red"
        case "Oranges":
            imageView.image = UIImage(named: "oranges.jpg")
            infoLabel.text = "These oranges are red"
        case "Lemons":
            imageView.image = UIImage(named: "lemons.jpg")
            infoLabel.text = "These apples are red"
        case "Limes":
            imageView.image = UIImage(named: "limes.jpg")
            infoLabel.text = "These apples are red"
        case "Blueberries":
            imageView.image = UIImage(named: "blueberries.jpg")
            infoLabel.text = "These apples are red"
        default:
            imageView.image = UIImage(named: "fruits.jpg")
            infoLabel.text = "Enjoy fruits"
        } // end of switch statement
    
    } // end of didSelectRow function
   
}

