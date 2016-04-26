//
//  ViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/21/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var letsBeginView: UIView!
    @IBOutlet weak var registarionView =  UIView()
    @IBOutlet weak var activeDeviceView: UIView!
    @IBOutlet weak var connectVehicleView: UIView!
    
    
    var views = [UIView]()
    
    override func viewDidLoad()
    {
        
        
        super.viewDidLoad()
        //registarionView = UIView()
        views.append(letsBeginView)
        views.append(registarionView!)
        views.append(activeDeviceView)
        views.append(connectVehicleView)
        
        //self.insertSubview(views[1], belowSubview: views[2])
        
        letsBeginView.hidden = false
        registarionView!.hidden = false
        connectVehicleView.hidden = false
        activeDeviceView.hidden = false
        
        
        //let draggableBackground: DraggableViewBackground = DraggableViewBackground(frame: self.view.frame)
        //self.view.addSubview(draggableBackground)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

