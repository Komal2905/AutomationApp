//
//  RegistartionViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/21/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit


class RegistartionViewController: UIViewController {
    
//    override func viewDidLoad()
//    {
//        self.view.frame = CGRect(x: 90, y: 90, width: 50, height: 50)
//    }
    
    
    @IBAction func buttonPressed(sender: AnyObject)
    {
        let finishPoint = CGPointMake(600,  view.center.y)
        UIView.animateWithDuration(0.3,
                                   animations: {
                                    self.view.center = finishPoint
                                    self.view.transform = CGAffineTransformMakeRotation(1)
            }, completion: nil /*{
             */)
        
        // registarionView.hidden = false
        performSegueWithIdentifier("register", sender: sender)
        
    }
    
}
