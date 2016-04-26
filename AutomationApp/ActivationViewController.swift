//
//  ActivationViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/21/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

class ActivationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
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
        performSegueWithIdentifier("activate", sender: sender)
        
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
