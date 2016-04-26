//
//  TESTViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/25/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

class TESTViewController: UIViewController,UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonpressed(sender: AnyObject)
    {
        
        let startPoint = CGPointMake(1, 10)
        let endPoint = CGPointMake(100, 200)
        
        
        let context = UIGraphicsGetCurrentContext()
        
      
        CGContextSetLineWidth(context, 2.0)
        CGContextSetStrokeColorWithColor(context, UIColor.redColor().CGColor)
        
        CGContextMoveToPoint(context, 10, 200)
        
        CGContextAddLineToPoint(context,100, 200)
        CGContextSetLineWidth(context, 1.2)
        //CGContextSetStrokeColorWithColor(<#T##CGContext?#>, <#T##CGColor?#>)
        CGContextStrokePath(context)

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
