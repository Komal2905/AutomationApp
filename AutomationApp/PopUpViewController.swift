//
//  PopUpViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/25/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

class PopUpViewController : UIViewController
{
    override var preferredContentSize: CGSize
        {
        get
        {
            return CGSize(width: 100, height: 100)
        }
        
        set
        {
                super.preferredContentSize = newValue
        }
    }

}