//
//  DashBoardCollectionViewCell.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/22/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

class DashBoardCollectionViewCell: UICollectionViewCell
{
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var numberLable: UILabel!
    
    
    @IBOutlet weak var tripLable: UILabel!
    
    
    
    @IBOutlet weak var dashBoardImageView: UIImageView!
    @IBOutlet weak var allTripTitle: UILabel!
    @IBOutlet weak var allTripSubTitle: UILabel!
    
    
    // for route assistant
    
    @IBOutlet weak var routeAssistantImageView: UIImageView!
    
    @IBOutlet weak var routeAssistantLabel: UILabel!
}
