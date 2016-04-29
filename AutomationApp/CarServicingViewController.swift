//
//  CarServicingViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/25/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

class CarServicingViewController: UIViewController,UIPopoverPresentationControllerDelegate {
    
    var util = Util()

    @IBOutlet weak var upcommingDateLable: UILabel!
    
    
    @IBOutlet weak var preServiceCommentLabel: UILabel!
    
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        util.bottomBorderLabel(upcommingDateLable)
        util.bottomBorderLabel(preServiceCommentLabel)
        
        scrollView.contentSize = CGSize(width: 320, height: 600)
        
        
        
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   
    
    
    
    @IBAction func addCarServicingButtonPressed(sender: AnyObject)
        
    {
        let savingsInformationViewController = storyboard?.instantiateViewControllerWithIdentifier("CarServicingViewController") //as! //CarServicingViewController

        //savingsInformationViewController.delegate=self;
        savingsInformationViewController!.modalPresentationStyle = .Popover
        
        let view : UIView = UIView(frame: CGRect(x: 500, y: 200, width: 20, height: 10))
        
        if let popoverController = savingsInformationViewController!.popoverPresentationController {
//            //popoverController.sourceView = sender as? UIView
//            
//             popoverController.sourceView = view
//            //popoverController.sourceRect = sender.bounds
//            
//           // popoverController.sourceView = self.view
//            popoverController.sourceRect = CGRect(x: 200, y: 200, width: 20, height: 10)
//            
//            // popoverController.permittedArrowDirections = .Any
//            popoverController.delegate = self
            
            
            
            
            savingsInformationViewController!.preferredContentSize = CGSizeMake(260,350)
            popoverController.delegate = self
            popoverController.sourceView = self.view
            popoverController.sourceRect = CGRectMake(170,100,0,0)
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
