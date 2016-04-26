//
//  EmergencyContactViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/25/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

class EmergencyContactViewController: UIViewController ,UIPopoverPresentationControllerDelegate,SavingViewControllerDelegate{
    
    var util  = Util()

    @IBOutlet weak var AddContact: UIButton!
    
    
    @IBOutlet weak var contact1Mobile: UILabel!
    
    @IBOutlet weak var contact1Name: UILabel!
    
    @IBOutlet weak var contact1Email: UILabel!
    
    
    
    @IBOutlet weak var contact2Mobile: UILabel!
    
    @IBOutlet weak var contact2Name: UILabel!
    
    @IBOutlet weak var contact2Email: UILabel!
    
    
    
    
    @IBOutlet weak var subLogoImageView: UIImageView!

    @IBOutlet weak var addedStatusLabel: UILabel!
    
    
    
    // Lable for Contact 1
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var phoneNumberLable: UILabel!
    
    @IBOutlet weak var emailLable: UILabel!
    
    @IBOutlet weak var contact1ProfilePic: UIImageView!
    
    var contactPriority : Int = 0
    
    @IBAction func addContactButtonPressed(sender: AnyObject)
    
    {
        let savingsInformationViewController = storyboard?.instantiateViewControllerWithIdentifier("AddContactPopupViewController") as! AddContactPopupViewController
        
        contactPriority = contactPriority + 1
        
        
        savingsInformationViewController.delegate=self;
        
        savingsInformationViewController.contactPrior = contactPriority
        savingsInformationViewController.strSaveText = "A"
        savingsInformationViewController.contactName = contact1Name.text
        savingsInformationViewController.contactMobile = "A"
        savingsInformationViewController.contactEmail = "A"
        
        
        
        savingsInformationViewController.modalPresentationStyle = .Popover
        if let popoverController = savingsInformationViewController.popoverPresentationController {
            popoverController.sourceView = sender as! UIView
           // popoverController.sourceRect = sender.bounds
           // popoverController.permittedArrowDirections = .Any
            popoverController.delegate = self
        }
        presentViewController(savingsInformationViewController, animated: true, completion: nil)
    
        
    }
    
    
    
    
    
    
    func saveText(strText: NSString)
    {
        contact1Name.text=strText as String
    }
    
    func saveContact1(name : String, phoneNumber : String, mobileNumber : String)
    {
        contact1Name.text = name
        contact1Mobile.text = phoneNumber
        contact1Email.text = mobileNumber
        
        subLogoImageView.image = UIImage(named: "Ok-48")
        addedStatusLabel.text = "Added 1 out of 3"
        
        
        util.bottomBorderLabel(nameLabel)
        util.roundImage(contact1ProfilePic)
        
        contact1ProfilePic.image = UIImage(named: "randomuser1")
        nameLabel.backgroundColor = UIColor.whiteColor()
        phoneNumberLable.backgroundColor = UIColor.whiteColor()
        emailLable.backgroundColor = UIColor.whiteColor()
    }
    
    
    func saveContact2(name : String, phoneNumber : String, mobileNumber : String)
    {
        contact2Name.text = name
        contact2Mobile.text = phoneNumber
        contact2Email.text = mobileNumber
        
        subLogoImageView.image = UIImage(named: "Ok-48")
        addedStatusLabel.text = "Added 2 out of 3"
        
        
        util.bottomBorderLabel(nameLabel)
        util.roundImage(contact1ProfilePic)
        
        contact1ProfilePic.image = UIImage(named: "randomuser1")
        nameLabel.backgroundColor = UIColor.whiteColor()
        phoneNumberLable.backgroundColor = UIColor.whiteColor()
        emailLable.backgroundColor = UIColor.whiteColor()
    }
    
    
    
    func saveContact3(name : String, phoneNumber : String, mobileNumber : String)
    {
        contact1Name.text = name
        contact1Mobile.text = phoneNumber
        contact1Email.text = mobileNumber
        
        subLogoImageView.image = UIImage(named: "Ok-48")
        addedStatusLabel.text = "Added 1 out of 3"
        
        
        util.bottomBorderLabel(nameLabel)
        util.roundImage(contact1ProfilePic)
        
        contact1ProfilePic.image = UIImage(named: "randomuser1")
        nameLabel.backgroundColor = UIColor.whiteColor()
        phoneNumberLable.backgroundColor = UIColor.whiteColor()
        emailLable.backgroundColor = UIColor.whiteColor()
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //util.roundButton(AddContact)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle
    {
        return UIModalPresentationStyle.None
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
//    {
//        let popupView = segue.destinationViewController
//        if let popup = popupView.popoverPresentationController
//        {
//            popup.delegate = self
//        }
//    }
//    
//    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle
//    {
//        return UIModalPresentationStyle.None
//    }
    
    // MARK: - UIPopoverPresentationControllerDelegate
  
    
//    func presentationController(controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController? {
//        return UINavigationController(rootViewController: controller.presentedViewController)
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}



protocol SavingViewControllerDelegate
{
    func saveText(var strText : NSString)
    func saveContact1(name : String, phoneNumber : String, mobileNumber : String)
    
    func saveContact2(name : String, phoneNumber : String, mobileNumber : String)
    
    func saveContact3(name : String, phoneNumber : String, mobileNumber : String)
    
    
    

    
}


