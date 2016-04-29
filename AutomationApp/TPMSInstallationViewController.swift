//
//  TPMSInstallationViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/26/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

class TPMSInstallationViewController: UIViewController {

    @IBOutlet weak var view1: dragView1!
    
    @IBAction func CHECKALLSENSOREBUTTONPRESSED(sender: AnyObject)
    {
        
        
        
        let finishPoint = CGPointMake(600,  view.center.y)
        
        
        
        UIView.animateWithDuration(0.3,
                                   animations: {
                                    self.view1.center = finishPoint
                                    self.view1.transform = CGAffineTransformMakeRotation(1)
            }, completion: nil /*{
             */)
        
        
        

    }
    
    
    @IBOutlet weak var view2: dragView1!
    
    @IBAction func button2Pressed(sender: AnyObject)
    {
         let finishPoint = CGPointMake(600,  view.center.y)
        UIView.animateWithDuration(0.3,
                                   animations: {
                                    self.view2.center = finishPoint
                                    self.view2.transform = CGAffineTransformMakeRotation(1)
            }, completion: nil /*{
             */)

    }
    
    @IBOutlet weak var view3: dragView1!
    
    
    @IBAction func button3Pressed(sender: AnyObject)
    {
        
        let finishPoint = CGPointMake(600,  view.center.y)
        UIView.animateWithDuration(0.3,
                                   animations: {
                                    self.view3.center = finishPoint
                                    self.view3.transform = CGAffineTransformMakeRotation(1)
            }, completion: nil /*{
             */)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("SWRevealViewController")
        self.presentViewController(vc, animated: true, completion: nil)

    }
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()

       // let draggableBackground: DraggableViewBackground = DraggableViewBackground(frame: self.view.frame)
        //self.view.addSubview(draggableBackground)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
