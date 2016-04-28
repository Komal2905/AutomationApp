//
//  AddContactPopupViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/25/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit
import ContactsUI
import Contacts
import AddressBookUI

protocol AddContactViewControllerDelegate {
    func didFetchContacts(contacts: [CNContact])
}

class AddContactPopupViewController: UIViewController, CNContactPickerDelegate{

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phonenumber: UITextField!

    @IBOutlet weak var email: UITextField!
    
    var delegate : SavingViewControllerDelegate?
    
    
    var contactDelegate: AddContactViewControllerDelegate!
    
   // @IBOutlet var textField: UITextField!
    var strSaveText : NSString!
    
    var contactPrior = Int()
    
    var contactName : String!
    var contactMobile : String!
    var contactEmail : String!
    
    
    @IBAction func showContactButton(sender: AnyObject)
    {
        self.showContacts()
        
    }
    

    
    func showContacts()
    {
        /*
        
        let status = CNContactStore.authorizationStatusForEntityType(.Contacts)
        if status == .Denied || status == .Restricted {
            // user previously denied, so tell them to fix that in settings
            return
        }
        
        // open it
        
        let store = CNContactStore()
        store.requestAccessForEntityType(.Contacts) { granted, error in
            guard granted else {
                dispatch_async(dispatch_get_main_queue()) {
                    // user didn't grant authorization, so tell them to fix that in settings
                    print(error)
                }
                return
            }
            
            // get the contacts
            
            var contacts = [CNContact]()
            let request = CNContactFetchRequest(keysToFetch: [CNContactIdentifierKey, CNContactFormatter.descriptorForRequiredKeysForStyle(.FullName)])
            do {
                try store.enumerateContactsWithFetchRequest(request) { contact, stop in
                    contacts.append(contact)
                }
            } catch {
                print(error)
            }
            
            // do something with the contacts array (e.g. print the names)
            
            let formatter = CNContactFormatter()
            formatter.style = .FullName
            for contact in contacts {
                print(formatter.stringFromContact(contact))
            }
        }
        
        
        // show Contact on VIew
        let contactPickerViewController = CNContactPickerViewController()
        
       // contactPickerViewController.predicateForEnablingContact = NSPredicate(format: "birthday != nil")
        
        contactPickerViewController.delegate = self
        
        presentViewController(contactPickerViewController, animated: true, completion: nil)*/
 
 
        let contactPickerViewController = CNContactPickerViewController()
 
        //contactPickerViewController.predicateForEnablingContact = NSPredicate(format: "birthday != nil")
 
        contactPickerViewController.delegate = self
 
        presentViewController(contactPickerViewController, animated: true, completion: nil)
       

    }
 
 
    func contactPicker(picker: CNContactPickerViewController, didSelectContact contact: CNContact)
    {
        
         let keys = [CNContactGivenNameKey, CNContactFamilyNameKey, CNContactEmailAddressesKey, CNContactBirthdayKey, CNContactImageDataKey]

        
        let status = CNContactStore.authorizationStatusForEntityType(.Contacts)
        if status == .Denied || status == .Restricted {
            // user previously denied, so tell them to fix that in settings
            return
        }
        
        // open it
        
        let store = CNContactStore()
        store.requestAccessForEntityType(.Contacts) { granted, error in
            guard granted else {
                dispatch_async(dispatch_get_main_queue()) {
                    // user didn't grant authorization, so tell them to fix that in settings
                    print(error)
                }
                return
            }
            
            // get the contacts
            
            var contacts = [CNContact]()
            let request = CNContactFetchRequest(keysToFetch: [CNContactIdentifierKey, CNContactFormatter.descriptorForRequiredKeysForStyle(.FullName)])
            do {
                try store.enumerateContactsWithFetchRequest(request) { contact, stop in
                    contacts.append(contact)
                }
            } catch {
                print(error)
            }
            
            // do something with the contacts array (e.g. print the names)
            
            let formatter = CNContactFormatter()
            
            
            formatter.style = .FullName
           
            for contact in contacts {
                print(formatter.stringFromContact(contact))
            }
        }


        
        print("KEYS",keys)
            contactDelegate!.didFetchContacts([contact])
            self.dismissViewControllerAnimated(true, completion: nil)
        
        
    }
    
    
    override func viewDidLoad()
    
    {
        
       // textField.text = "AA"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonDone(sender: UIButton)
    {
        if((self.delegate) != nil)
        {
            delegate?.saveText(name.text!);
            if(contactPrior == 1)
            {
            delegate?.saveContact1(name.text!, phoneNumber: phonenumber.text!, email: email.text!)
                
            //contactPrior = 2
            self.dismissViewControllerAnimated(true, completion: nil)
            
           
            }
            
            if(contactPrior == 2)
            {
                delegate?.saveContact2(name.text!, phoneNumber: phonenumber.text!, mobileNumber:  email.text!)
                self.dismissViewControllerAnimated(true, completion: nil)
            }
            
            if(contactPrior == 3)
            {
                delegate?.saveContact3(name.text!, phoneNumber: phonenumber.text!, mobileNumber:  email.text!)
                self.dismissViewControllerAnimated(true, completion: nil)
            }
            
            
        }
    }
  

}