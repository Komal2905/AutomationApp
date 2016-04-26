//
//  AddContactPopupViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/25/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

class AddContactPopupViewController: UIViewController{

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phonenumber: UITextField!

    @IBOutlet weak var email: UITextField!
    
    var delegate : SavingViewControllerDelegate?
    @IBOutlet var textField: UITextField!
    var strSaveText : NSString!
    
    var contactPrior = Int()
    
    var contactName : String!
    var contactMobile : String!
    var contactEmail : String!

    override func viewDidLoad()
    
    {
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
            delegate?.saveContact1(name.text!, phoneNumber: phonenumber.text!, mobileNumber: email.text!)
                
            //contactPrior = 2
            self.dismissViewControllerAnimated(true, completion: nil)
            
           
            }
            
            if(contactPrior == 2)
            {
                delegate?.saveContact1(name.text!, phoneNumber: phonenumber.text!, mobileNumber: email.text!)
                self.dismissViewControllerAnimated(true, completion: nil)
            }
             /*
            if(contactPrior == 3)
            {
                delegate?.saveContact1(name.text!, phoneNumber: phonenumber.text!, mobileNumber: email.text!)
                self.dismissViewControllerAnimated(true, completion: nil)
            }*/
            
            
        }
    }
  

}
