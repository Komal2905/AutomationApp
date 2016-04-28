//
//  WalkThru2ViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/27/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit



class WalkThru2ViewController: UIViewController {

    @IBOutlet weak var textView: CardView!
    
    
    @IBOutlet weak var textLable: UILabel!
    
    @IBOutlet weak var view1: CardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       self.animateTextView()
    }
    
    func animateTextView()
    {
        let finishPoint = CGPointMake(-600,  textView.center.y)
        UIView.animateWithDuration(2,
                                   animations: {
                                    self.textView.center = finishPoint
                                    //self.textView.transform = CGAffineTransformMakeRotation(1)
                                  
                                    
                                   // self.textView.transform = transitionOptions
            }, completion: nil /*{
             */)
        
        
        let transitionOptions = UIViewAnimationOptions.TransitionFlipFromLeft
        UIView.animateWithDuration(0.1, delay: 1, usingSpringWithDamping: 1.2, initialSpringVelocity: 1.2, options: transitionOptions, animations:  {
                       }, completion: nil)
    }

    
    func animateLowerLable()
    {
        self.textLable.fadeIn()
        self.textLable.fadeOut()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        animateLowerLable()
    }
    
    override func viewDidAppear(animated: Bool) {
        
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
