//
//  walkThru1ViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/27/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit
import Spring

class WalkThru1ViewController: UIViewController {

    @IBOutlet weak var textView: CardView!
   
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var fallView: UIView!
    
 
    @IBOutlet weak var testView: SpringView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
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
    
    var check = false
    
    var a : CGAffineTransform = CGAffineTransformMakeTranslation(0, 300)
    var top : CGAffineTransform = CGAffineTransformMakeTranslation(0, 300)
    
    func animateColorView()
    {
        
       
        // let left = CGAffineTransformMakeTranslation(-300, 0)
        //let right = CGAffineTransformMakeTranslation(300, 0)
        
        
            let top = CGAffineTransformMakeTranslation(0, 300)
            //let top = CGAffineTransformMakeTranslation(0, -300)
        
            UIView.animateWithDuration(0.2, delay: 0.0, options: [], animations: {
            
            //self.testView.transform = top
               self.testView.center.x = 0
                self.testView.center.y = 300
                
            }, completion: nil)
        
            print("1")
        
            check = true
    
       
        //animateTextView()
    }
    
   
    func animateColorViewBack()
    {
        // let left = CGAffineTransformMakeTranslation(-300, 0)
        //let right = CGAffineTransformMakeTranslation(300, 0)
        
      
        let top = CGAffineTransformMakeTranslation(0, 300)
        //let top = CGAffineTransformMakeTranslation(0, -300)
        
        UIView.animateWithDuration(0.0, delay: 0.0, options: [], animations: {
            
            self.testView.transform = top
            }, completion: nil)
    
        //animateTextView()
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
    
    func animateLowerLable()
    {
        self.textLabel.fadeIn()
        self.textLabel.fadeOut()
        
    }

    override func viewWillAppear(animated: Bool)
    {
         //animateTextView()
        // animateTextView1()
    }
    
    override func viewDidAppear(animated: Bool)
    {
        animateLowerLable()
        
        animateColorView()
        //animateTextView1()

    }
    
    override func viewDidDisappear(animated: Bool)
    {
       // animateColorViewBack()
        
        print("Desappers")
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
