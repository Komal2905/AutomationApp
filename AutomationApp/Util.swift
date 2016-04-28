//
//  Util.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/22/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import Foundation
import UIKit

public class Util
{
    
    func bottomBorderTextfield(textfield : UITextField)
    {
        
        let border = CALayer()
        let width = CGFloat(0.9)
        border.borderColor = UIColor.darkGrayColor().CGColor
        border.frame = CGRect(x: 0, y: textfield.frame.size.height - width, width:  textfield.frame.size.width, height: textfield.frame.size.height)
        
        
        
        border.borderWidth = width
        textfield.layer.addSublayer(border)
        textfield.layer.masksToBounds = true
    }
    
    
    func bottomBorderLabel(label : UILabel)
    {
        
        let border = CALayer()
        let width = CGFloat(0.9)
        border.borderColor = UIColor.grayColor().CGColor
        border.frame = CGRect(x: 0, y: label.frame.size.height - width, width:  label.frame.size.width, height: label.frame.size.height)
        
        
        
        border.borderWidth = width
        label.layer.addSublayer(border)
        label.layer.masksToBounds = true
    }
    
    
    
    // only roundCorner
    func roundButton(button : UIButton)
    {
        // make button Raounded
        
        button.layer.cornerRadius = 20
        
        // define border of button
        
        button.layer.borderWidth = 1.0
        
        // define border color
        button.layer.borderColor = UIColor.whiteColor().CGColor
    }
    
    
    
    
    // function for round ImageView
    
    // This function takes ImageView as a parameter and return round ImageView
    func roundImage(imageView : UIImageView)
    {
        imageView.layer.borderWidth = 2.0
        imageView.layer.masksToBounds = false
        imageView.layer.borderColor = UIColor.darkGrayColor().CGColor
        
        imageView.layer.cornerRadius =  imageView.frame.size.height/2
        imageView.clipsToBounds = true
        imageView.contentMode = .ScaleAspectFill
        
    }
    
    
    
    func roundImageGray(imageView : UIImageView)
    {
        imageView.layer.borderWidth = 2.0
        imageView.layer.masksToBounds = false
        imageView.layer.borderColor = UIColor.darkGrayColor().CGColor
        
        imageView.layer.cornerRadius =  imageView.frame.size.height/2
        imageView.clipsToBounds = true
        imageView.contentMode = .ScaleAspectFill
        
    }
    
    
}

extension CALayer {
    
    func addBorder(edge: UIRectEdge, color: UIColor, thickness: CGFloat) {
        
        var border = CALayer()
        
        switch edge {
        case UIRectEdge.Top:
            border.frame = CGRectMake(0, 0, CGRectGetHeight(self.frame), thickness)
            break
        case UIRectEdge.Bottom:
            border.frame = CGRectMake(0, CGRectGetHeight(self.frame) - thickness, UIScreen.mainScreen().bounds.width, thickness)
            break
        case UIRectEdge.Left:
            border.frame = CGRectMake(0, 0, thickness, CGRectGetHeight(self.frame))
            break
        case UIRectEdge.Right:
            border.frame = CGRectMake(CGRectGetWidth(self.frame) - thickness, 0, thickness, CGRectGetHeight(self.frame))
            break
        default:
            break
        }
        
        border.backgroundColor = color.CGColor;
        
        self.addSublayer(border)
    }
    
}


// fade in and out effect

extension UIView {
    func fadeIn(duration: NSTimeInterval = 4.0, delay: NSTimeInterval = 0.0, completion: ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animateWithDuration(duration, delay: delay, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            self.alpha = 0.0
            }, completion: completion)  }
    
    func fadeOut(duration: NSTimeInterval = 5.0, delay: NSTimeInterval = 0.0, completion: (Bool) -> Void = {(finished: Bool) -> Void in}) {
        UIView.animateWithDuration(duration, delay: delay, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            self.alpha = 1.0
            }, completion: completion)
        
        
        
}
}