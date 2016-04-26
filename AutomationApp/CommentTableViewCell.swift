//
//  CommentTableViewCell.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/26/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

class CommentTableViewCell: UITableViewCell {

    @IBOutlet weak var commentCell: UIButton!
    
    @IBAction func readMorePressed(sender: AnyObject)
    {
        
//        let savingsInformationViewController = storyboard?.instantiateViewControllerWithIdentifier("CarServicingViewController") //as! //CarServicingViewController
//        
//       
//        
//        //savingsInformationViewController.delegate=self;
//        savingsInformationViewController!.modalPresentationStyle = .Popover
//        
//        let view : UIView = UIView(frame: CGRect(x: 500, y: 200, width: 20, height: 10))
//        
//        if let popoverController = savingsInformationViewController!.popoverPresentationController {
//           
//            
//            
//            
//            savingsInformationViewController!.preferredContentSize = CGSizeMake(260,350)
//            popoverController.delegate = self
//            popoverController.sourceView = self.view
//            popoverController.sourceRect = CGRectMake(170,100,0,0)
//        }
//        presentViewController(savingsInformationViewController!, animated: true, completion: nil)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
