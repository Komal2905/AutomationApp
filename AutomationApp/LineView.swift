//
//  LineView.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/25/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

class LineView: UIView {

    override func drawRect(rect: CGRect) {
        var aPath = UIBezierPath()
        
        aPath.moveToPoint(CGPoint(x:225, y:16))
        
        aPath.addLineToPoint(CGPoint(x:200 ,y:16))
        
        //Keep using the method addLineToPoint until you get to the one where about to close the path
        
        aPath.closePath()
        
        //If you want to stroke it with a red color
        UIColor.redColor().set()
        aPath.stroke()
        //If you want to fill it as well 
        aPath.fill()
        
    }
}
