//
//  EmergencyContactViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/25/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit
import ContactsUI
import Contacts

class EmergencyContactViewController: UIViewController ,UIPopoverPresentationControllerDelegate,SavingViewControllerDelegate,AddContactViewControllerDelegate,UITextFieldDelegate{
    
    var util  = Util()

    @IBOutlet weak var AddContact: UIButton!
    
    
    @IBOutlet weak var contact1NameText: UITextField!
    @IBOutlet weak var contact1Mobile: UILabel!
    @IBOutlet weak var contact1Email: UILabel!
    
    
    
    @IBOutlet weak var contact2Mobile: UILabel!
    @IBOutlet weak var contact2NameText: UITextField!
    @IBOutlet weak var contact2Email: UILabel!
    
    
    
    @IBOutlet weak var contact3NameText: UITextField!
    @IBOutlet weak var contact3Mobile: UILabel!
    
    @IBOutlet weak var contact3Email: UILabel!
    
    
    @IBOutlet weak var subLogoImageView: UIImageView!

    @IBOutlet weak var addedStatusLabel: UILabel!
    
    
    
    // Lable for Contact 1
    
    
//    @IBOutlet weak var contact1Name: UILabel!
//    
//    @IBOutlet weak var phoneNumberLable: UILabel!
//    
//    @IBOutlet weak var emailLable: UILabel!
    
    @IBOutlet weak var contact1ProfilePic: UIImageView!
    
    @IBOutlet weak var contact2ProfilePic: UIImageView!
    
    @IBOutlet weak var contact3imageView: UIImageView!
    
    
    
    var contactPriority : Int = 0
    
    var contacts = [CNContact]()
    
    @IBAction func addContactButtonPressed(sender: AnyObject)
    
    {
        
        properUIContact1()
        
        let savingsInformationViewController = storyboard?.instantiateViewControllerWithIdentifier("AddContactPopupViewController") as! AddContactPopupViewController
        
        contactPriority = 1
        
        
        savingsInformationViewController.delegate=self;
        
        
        savingsInformationViewController.contactDelegate = self
        
        savingsInformationViewController.contactPrior = contactPriority
        savingsInformationViewController.strSaveText = "A"
        savingsInformationViewController.contactName = "A"
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
    
    @IBAction func AddContact2ButtonPressed(sender: AnyObject)
    {
        
        properUIContact2()
        
        let savingsInformationViewController = storyboard?.instantiateViewControllerWithIdentifier("AddContactPopupViewController") as! AddContactPopupViewController
        
        contactPriority = 2
        
        
        savingsInformationViewController.delegate=self;
        
        
        savingsInformationViewController.contactDelegate = self
        
        savingsInformationViewController.contactPrior = contactPriority
        savingsInformationViewController.strSaveText = "A"
        savingsInformationViewController.contactName = "A"
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
    
    @IBAction func AddContact3ButtonPressed(sender: AnyObject)
    {
        properUIContact3()
        
        
        let savingsInformationViewController = storyboard?.instantiateViewControllerWithIdentifier("AddContactPopupViewController") as! AddContactPopupViewController
        
        contactPriority = 3
        
        
        savingsInformationViewController.delegate=self;
        
        
        savingsInformationViewController.contactDelegate = self
        
        savingsInformationViewController.contactPrior = contactPriority
        savingsInformationViewController.strSaveText = "A"
        savingsInformationViewController.contactName = "A"
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
    
    
    
    func formatLabel()
    {
        subLogoImageView.image = UIImage(named: "Ok-48")
        
        util.bottomBorderTextfield(contact1NameText)
        util.roundImage(contact1ProfilePic)
        
        contact1ProfilePic.image = UIImage(named: "randomuser1")
        contact1Mobile.backgroundColor = UIColor.whiteColor()
        contact1Email.backgroundColor = UIColor.whiteColor()

    }
    
    
    // Setting UI Of Contact
    func properUIContact1()
    {
        subLogoImageView.image = UIImage(named: "Ok-48")
        
        util.bottomBorderTextfield(contact1NameText)
        util.roundImage(contact1ProfilePic)
        
        contact1ProfilePic.image = UIImage(named: "randomuser1")
        contact1Mobile.backgroundColor = UIColor.whiteColor()
        contact1Email.backgroundColor = UIColor.whiteColor()
    }
    func properUIContact2()
    {
        subLogoImageView.image = UIImage(named: "Ok-48")
        
        util.bottomBorderTextfield(contact2NameText)
        util.roundImage(contact2ProfilePic)
        
        contact2ProfilePic.image = UIImage(named: "randomuser1")
        contact2Mobile.backgroundColor = UIColor.whiteColor()
        contact2Email.backgroundColor = UIColor.whiteColor()
    }
    
    func properUIContact3()
    {
        subLogoImageView.image = UIImage(named: "Ok-48")
        
        util.bottomBorderTextfield(contact3NameText)
        util.roundImage(contact3imageView)
        
        contact3imageView.image = UIImage(named: "randomuser1")
        contact3Mobile.backgroundColor = UIColor.whiteColor()
        contact3Email.backgroundColor = UIColor.whiteColor()
    }
    
    
    
    
    func saveText(strText: NSString)
    {
        //contact1Name.text=strText as String
    }
    
    func saveContact1(name : String, phoneNumber : String, email: String)
    {
        
        contact1NameText.text = name
        //contact1Name.text = name
        contact1Mobile.text = phoneNumber
        contact1Email.text = email
        
        
        addedStatusLabel.text = "Added 1 out of 3"
        
        self.formatLabel()

    }
    
    
    func saveContact2(name : String, phoneNumber : String, mobileNumber : String)
    {
        contact2NameText.text = name
        
        print("contact2Name.text",contact2NameText.text)
        contact2Mobile.text = phoneNumber
        contact2Email.text = mobileNumber
        addedStatusLabel.text = "Added 2 out of 3"

    }
    
    
    
    func saveContact3(name : String, phoneNumber : String, mobileNumber : String)
    {
        contact3NameText.text = name
        contact3Mobile.text = phoneNumber
        contact3Email.text = mobileNumber
        addedStatusLabel.text = "Added 3 out of 3"
//        subLogoImageView.image = UIImage(named: "Ok-48")

    }
    
    func didFetchContacts(contacts: [CNContact])
    {
        // FULL NAME
        let store = CNContactStore()
        var contactsFullName = [CNContact]()
        
        let request = CNContactFetchRequest(keysToFetch: [CNContactIdentifierKey, CNContactFormatter.descriptorForRequiredKeysForStyle(.FullName)])
       
        do {
            try store.enumerateContactsWithFetchRequest(request) { contact, stop in
               // contactsFullName.append(contacts)
                
                
                contactsFullName = contacts
               // contacts = contact
            }
        }
        catch
        {
            print(error)
        }
        
        let formatter = CNContactFormatter()
        
        formatter.style = .FullName
        let name  = formatter.stringFromContact(contactsFullName[0])
        
        

        //let name = contacts[0].givenName
        
        var  phoneNumber : String!
        
        var email : String!
        
       
        
        if contacts[0].isKeyAvailable(CNContactPhoneNumbersKey)
        {
            if let
                phonenumberValue = contacts[0].phoneNumbers.first,
                pn = phonenumberValue.value as? CNPhoneNumber where phonenumberValue.value is CNPhoneNumber
            {
               phoneNumber = pn.stringValue
            }
        }

        
        if  contacts[0].isKeyAvailable(CNContactEmailAddressesKey)
        {
            if let emailValue =  contacts[0].emailAddresses.first!.value as? String
            {
                email = emailValue
            }
        }
        
        
        
        if(contactPriority == 1)
        {
            addedStatusLabel.text = "Added 1 out of 3"
            contact1NameText.text = name
            contact1Mobile.text = phoneNumber
            contact1Email.text = email
           // self.formatLabel()
        }
        if(contactPriority == 2)
        {
            addedStatusLabel.text = "Added 2 out of 3"
            contact2NameText.text = name
            contact2Mobile.text = phoneNumber
            contact2Email.text = email
 
        }
        
        if(contactPriority == 3)
        {
            addedStatusLabel.text = "Added 3 out of 3"
            contact3NameText.text = name
            contact3Mobile.text = phoneNumber
            contact3Email.text = email
            
        }
        
        
        
        for contact in contacts
        {
            self.contacts.append(contact)
        }
        
        
         self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.contact1NameText.delegate = self
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
    
    
    
    @IBAction func editNameButtonPresed(sender: AnyObject)
    {
        
       contact1NameText.userInteractionEnabled = true

    }

    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        self.view.endEditing(true)
        
        contact1NameText.userInteractionEnabled = false
        return false
    }
}



protocol SavingViewControllerDelegate
{
    func saveText( strText : NSString)
    func saveContact1(name : String, phoneNumber : String, email : String)
    
    func saveContact2(name : String, phoneNumber : String, mobileNumber : String)
    
    func saveContact3(name : String, phoneNumber : String, mobileNumber : String)
    
}


