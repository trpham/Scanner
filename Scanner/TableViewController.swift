//
//  ViewController.swift
//  Scanner
//
//  Created by TruongPham on 7/27/16.
//  Copyright © 2016 NathanP. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var foodArray:[Food] = [Food]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let food1 = Food(imageName: "cake.jpg", description: "Chocolate Cake", moreInfo: "It's good")
        let food2 = Food(imageName: "meringue.jpg", description: "Meringue", moreInfo: "It's too good")
        let food3 = Food(imageName: "peaches.jpg", description: "Grilled Peaches", moreInfo: "It's three good")
        let food4 = Food(imageName: "tiramisu.jpg", description: "Tiramisu", moreInfo: "It's four good")
        
        foodArray.append(food1)
        foodArray.append(food2)
        foodArray.append(food3)
        foodArray.append(food4)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! myCell
        let foodItem = foodArray[indexPath.row]
        
        cell.myImageView.image = UIImage(named: foodItem.imageName)
        cell.myLabel.text = foodItem.description
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let foodSelected = foodArray[indexPath.row]
        let detailVC:DetailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewController") as! DetailViewController
        detailVC.imageDetail = foodSelected.imageName
        detailVC.descriptionLabel = foodSelected.description
        detailVC.moreInfoDetail = foodSelected.moreInfo
        
        self.presentViewController(detailVC, animated: true, completion: nil)
    }
}
