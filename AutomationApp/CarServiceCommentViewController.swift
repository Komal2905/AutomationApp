//
//  CarServiceCommentViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/26/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

class CarServiceCommentViewController: UIViewController , UIPopoverPresentationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func hello(sender: AnyObject)
    {
        let savingsInformationViewController = storyboard?.instantiateViewControllerWithIdentifier("readMoreCommnetViewController") //as! //CarServicingViewController
        
        //savingsInformationViewController.delegate=self;
        savingsInformationViewController!.modalPresentationStyle = .Popover
        
        let view : UIView = UIView(frame: CGRect(x: 500, y: 200, width: 20, height: 10))
        
        if let popoverController = savingsInformationViewController!.popoverPresentationController {
            
            
            
            savingsInformationViewController!.preferredContentSize = CGSizeMake(260,240)
            popoverController.delegate = self
            popoverController.sourceView = self.view
            popoverController.sourceRect = CGRectMake(10,10,0,0)
        }
        presentViewController(savingsInformationViewController!, animated: true, completion: nil)
        
   
        
    }
    
    @IBAction func commnetButtonPressed(sender: AnyObject)
    {   let savingsInformationViewController = storyboard?.instantiateViewControllerWithIdentifier("readMoreCommnetViewController") //as! //CarServicingViewController
            
            //savingsInformationViewController.delegate=self;
            savingsInformationViewController!.modalPresentationStyle = .Popover
            
            let view : UIView = UIView(frame: CGRect(x: 500, y: 200, width: 20, height: 10))
            
            if let popoverController = savingsInformationViewController!.popoverPresentationController {
              
                
            
                savingsInformationViewController!.preferredContentSize = CGSizeMake(260,240)
                popoverController.delegate = self
                popoverController.sourceView = self.view
                popoverController.sourceRect = CGRectMake(10,10,0,0)
            }
            presentViewController(savingsInformationViewController!, animated: true, completion: nil)
       
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle
    {
        return UIModalPresentationStyle.None
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
