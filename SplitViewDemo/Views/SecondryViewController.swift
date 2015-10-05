//
//  SecondryViewController.swift
//  SplitViewDemo
//
//  Created by Mukund-iMac on 3/9/15.
//  Copyright (c) 2015 TheAppGuruz. All rights reserved.
//

import UIKit

class SecondryViewController: UIViewController {

    var selectedColor: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if selectedColor == nil {
            return
        }
        let str : NSString = NSString(string: selectedColor) as NSString
        if str.isEqualToString("Red")
        {
            self.view.backgroundColor = UIColor.redColor()
        }
        if str.isEqualToString("Green")
        {
            self.view.backgroundColor = UIColor.greenColor()
        }
        if str.isEqualToString("Orange")
        {
            self.view.backgroundColor = UIColor.orangeColor()
        }
        if str.isEqualToString("Yellow")
        {
            self.view.backgroundColor = UIColor.yellowColor()
        }
    }

    

}
