//
//  carStacksViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/27/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

import Spring

import Contacts
import ContactsUI




class carStacksViewController: UIViewController, CNContactPickerDelegate,UIViewControllerTransitioningDelegate {
    
    @IBAction func showContact(sender: AnyObject) {
         self.showContacts()
    }
    @IBOutlet weak var theButton: UIButton!
    
    @IBOutlet weak var view1: DesignableView!
   
    

    @IBAction func connectButtonPressed(sender: AnyObject)
    {
        
//        let finishPoint = CGPointMake(600,  1000)
//
//        
//        
//        UIView.animateWithDuration(0.2,
//                                   animations: {
//                                    self.view1.center = finishPoint
//                                    self.view1.transform = CGAffineTransformMakeRotation(1)
//            }, completion: nil /*{
//             */)
        
       
    }
    
    
    func showContacts()
    {
        let contactPickerViewController = CNContactPickerViewController()
        
        contactPickerViewController.predicateForEnablingContact = NSPredicate(format: "birthday != nil")
        
        contactPickerViewController.delegate = self
        
        presentViewController(contactPickerViewController, animated: true, completion: nil)

    }
    
    @IBOutlet weak var view2: DesignableView!
    
    
    @IBAction func activateDeviceButtonPressed(sender: AnyObject)
    {
        
        let finishPoint = CGPointMake(600,  600)
        
        print("A")
        
        UIView.animateWithDuration(0.3,
                                   animations: {
                                    self.view2.center = finishPoint
                                    self.view2.transform = CGAffineTransformMakeRotation(1)
                                    
                                    self.view2.alpha = 0
            }, completion: nil /*{
             */)
        
    }
    
    
    @IBOutlet weak var view3: DesignableView!

    @IBAction func createAccountButtonPressed(sender: AnyObject)
    {
        let finishPoint = CGPointMake(600,  600)
        
        
        
        UIView.animateWithDuration(0.3,
                                   animations: {
                                    self.view3.center = finishPoint
                                    self.view3.transform = CGAffineTransformMakeRotation(9)
                                    self.view3.alpha = 0
            }, completion: nil /*{
             */)

      
    }
    
    
    @IBOutlet weak var view4: DesignableView!
    

    @IBAction func letsbeginButtonPressed(sender: AnyObject)
    {
        let finishPoint = CGPointMake(600,  600)
        
        
        
        UIView.animateWithDuration(0.3,
                                   animations: {
                                    self.view4.center = finishPoint
                                    self.view4.transform = CGAffineTransformMakeRotation(1)
                                    self.view4.alpha = 0
            }, completion: nil /*{
             */)
       
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        //view4 = DesignableView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        
        view4.frame =  CGRectMake(0 , 10, 200, 200)
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
