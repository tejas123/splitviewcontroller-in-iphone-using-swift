//
//  PrimaryViewController.swift
//  SplitViewDemo
//
//  Created by Mukund-iMac on 3/9/15.
//  Copyright (c) 2015 TheAppGuruz. All rights reserved.
//

import UIKit

class PrimaryViewController: UITableViewController {
   
    var marrColors : NSMutableArray=NSMutableArray(array: ["Red","Green","Orange","Yellow"])

    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 4
    }

 
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) 

       cell.textLabel?.text = marrColors.objectAtIndex(indexPath.row) as? String

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
   
        let cell :UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        let storyBoard : UIStoryboard = UIStoryboard (name: "Main", bundle: nil);
        let objSecondryViewController :SecondryViewController = storyBoard.instantiateViewControllerWithIdentifier("SecondryViewController") as! SecondryViewController
        objSecondryViewController.selectedColor = cell.textLabel?.text
        showDetailViewController(objSecondryViewController, sender: self)
        
    }
   

}
