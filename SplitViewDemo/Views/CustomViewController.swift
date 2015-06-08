//
//  CustomViewController.swift
//  SplitViewDemo
//
//  Created by Mukund-iMac on 3/9/15.
//  Copyright (c) 2015 TheAppGuruz. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    var viewController : UISplitViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    func setEmbeddedViewController(splitViewController: UISplitViewController!){
        if splitViewController != nil{
            viewController = splitViewController
            self.addChildViewController(viewController)
            self.view.addSubview(viewController.view)
            viewController.didMoveToParentViewController(self)
        }
        self.setOverrideTraitCollection(UITraitCollection(horizontalSizeClass: UIUserInterfaceSizeClass.Regular), forChildViewController: viewController)
    }

    }
