//
//  walkThru3ViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/27/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit
//import Spring


class WalkThru3ViewController: UIViewController {

    
    
    var circleView = CardView()
   
    @IBOutlet weak var textView: CardView!
    
    @IBOutlet weak var circleView1: UIView!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animateTextView()
        
        //circleView.circularView(circleView1)

    }

    func animateTextView()
    {
        let finishPoint = CGPointMake(-600,  -600)//textView.center.y
        UIView.animateWithDuration(0,
                                   animations: {
                                    //self.textView.center = finishPoint
                                    self.textView.center.x = -600
                                    self.textView.center.y = -600
                                    self.textView.alpha = 0.0
                                    
                                    
                                    //self.textView.transform = CGAffineTransformMakeRotation(1)
            }, completion: nil /*{
             */)
        
    }
    
    func animateTextView1()
    {
        let finishPoint = CGPointMake(-1200,  textView.center.y)
        UIView.animateWithDuration(3,
                                   animations: {
                                    self.textView.center = finishPoint
                                    self.textView.alpha = 1.0
                                    
                                    //self.textView.transform = CGAffineTransformMakeRotation(1)
            }, completion: nil /*{
             */)
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func animateLowerLable()
    {
        self.textLabel.fadeIn()
        self.textLabel.fadeOut()
        
    }
    
    override func viewWillAppear(animated: Bool)
    {
        animateTextView1()

        animateLowerLable()
    }
    
    override func viewDidAppear(animated: Bool)
    {
       
      
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
