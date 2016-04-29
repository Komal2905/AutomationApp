//
//  The MIT License (MIT)
//
//  Copyright (c) 2014 Andrew Clissold
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//      The above copyright notice and this permission notice shall be included in all
//      copies or substantial portions of the Software.
//
//      THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//      IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//      FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//      AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//      LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//      OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//      SOFTWARE.
//

import UIKit

@IBDesignable
class CardView: UIView {

    @IBInspectable var cornerRadius: CGFloat = 2

    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 3
    @IBInspectable var shadowColor: UIColor? = UIColor.blackColor()
    @IBInspectable var shadowOpacity: Float = 0.5

    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)

        layer.masksToBounds = false
        layer.shadowColor = shadowColor?.CGColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
        layer.shadowOpacity = shadowOpacity
        layer.shadowPath = shadowPath.CGPath
    }
    func circularView(view : UIView)
    {
        let cornerRadius: CGFloat = 24
        
        let shadowOffsetWidth: Int = 0
        let shadowOffsetHeight: Int = 1
        let shadowColor: UIColor? = UIColor.blackColor()
        let shadowOpacity: Float = 0.5
        
        //    func layoutSubviews() {
        view.layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: view.bounds, cornerRadius: cornerRadius)
        
        view.layer.masksToBounds = false
        view.layer.shadowRadius = 2
        view.layer.shadowColor = shadowColor?.CGColor
        view.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
        view.layer.shadowOpacity = shadowOpacity
        view.layer.shadowPath = shadowPath.CGPath
        //  }
        
    }

}

class CircleView : UIView {
//    override func drawRect(rect: CGRect) {
//        let c = UIGraphicsGetCurrentContext()
//        CGContextAddRect(c, CGRectMake(10, 10, 80, 80))
//        CGContextSetStrokeColorWithColor(c , UIColor.redColor().CGColor)
//        CGContextStrokePath(c)
//    }
    
    @IBInspectable var cornerRadius: CGFloat = 75
    
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 1
    @IBInspectable var shadowColor: UIColor? = UIColor.blackColor()
    @IBInspectable var shadowOpacity: Float = 0.5
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        
        layer.masksToBounds = false
        layer.shadowRadius = 2
        layer.shadowColor = shadowColor?.CGColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
        layer.shadowOpacity = shadowOpacity
        layer.shadowPath = shadowPath.CGPath
    }

}



class CircleViewContact : UIView {
    //    override func drawRect(rect: CGRect) {
    //        let c = UIGraphicsGetCurrentContext()
    //        CGContextAddRect(c, CGRectMake(10, 10, 80, 80))
    //        CGContextSetStrokeColorWithColor(c , UIColor.redColor().CGColor)
    //        CGContextStrokePath(c)
    //    }
    
    @IBInspectable var cornerRadius: CGFloat = 24
    
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 1
    @IBInspectable var shadowColor: UIColor? = UIColor.blackColor()
    @IBInspectable var shadowOpacity: Float = 0.5
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        
        layer.masksToBounds = false
        layer.shadowRadius = 2
        layer.shadowColor = shadowColor?.CGColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
        layer.shadowOpacity = shadowOpacity
        layer.shadowPath = shadowPath.CGPath
    }
    
    
   
}



class HairlineView: UIView {
    override func awakeFromNib() {
        guard let backgroundColor = self.backgroundColor?.CGColor else { return }
        self.layer.borderColor = backgroundColor
        self.layer.borderWidth = (1.0 / UIScreen.mainScreen().scale) / 2;
        self.backgroundColor = UIColor.clearColor()
    }
}


class dragView1 : UIView
{
    override func layoutSubviews()
    {

    self.layer.cornerRadius = 4;
    self.layer.shadowRadius = 3;
    self.layer.shadowOpacity = 0.2;
    self.layer.shadowOffset = CGSizeMake(1, 1);
    }
}

//let superview = UIView(frame: CGRectMake(0, 0, 200, 200))
//
//let shadowView = UIView(frame: CGRectMake(50, 50, 100, 100))
//shadowView.layer.shadowColor = UIColor.blackColor().CGColor
//shadowView.layer.shadowOffset = CGSizeZero
//shadowView.layer.shadowOpacity = 0.5
//shadowView.layer.shadowRadius = 5
//
//let view = MyView(frame: shadowView.bounds)
//view.backgroundColor = UIColor.whiteColor()
//view.layer.cornerRadius = 10.0
//view.layer.borderColor = UIColor.grayColor().CGColor
//view.layer.borderWidth = 0.5
//view.clipsToBounds = true
//
//shadowView.addSubview(view)
//superview.addSubview(shadowView)
