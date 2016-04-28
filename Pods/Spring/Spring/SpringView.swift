// The MIT License (MIT)
//
// Copyright (c) 2015 Meng To (meng@designcode.io)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import UIKit
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



public class CircularSpringView: UIView, Springable {
    @IBInspectable public var autostart: Bool = false
    @IBInspectable public var autohide: Bool = false
    @IBInspectable public var animation: String = ""
    @IBInspectable public var force: CGFloat = 1
    @IBInspectable public var delay: CGFloat = 0
    @IBInspectable public var duration: CGFloat = 0.7
    @IBInspectable public var damping: CGFloat = 0.7
    @IBInspectable public var velocity: CGFloat = 0.7
    @IBInspectable public var repeatCount: Float = 1
    @IBInspectable public var x: CGFloat = 0
    @IBInspectable public var y: CGFloat = 0
    @IBInspectable public var scaleX: CGFloat = 1
    @IBInspectable public var scaleY: CGFloat = 1
    @IBInspectable public var rotate: CGFloat = 0
    @IBInspectable public var curve: String = ""
    
    @IBInspectable var cornerRadius: CGFloat = 74
    
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 1
    @IBInspectable var shadowColor: UIColor? = UIColor.blackColor()
    @IBInspectable var shadowOpacity: Float = 0.5
    
    
    public var opacity: CGFloat = 1
    public var animateFrom: Bool = false
    
    lazy private var spring : Spring = Spring(self)
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        self.spring.customAwakeFromNib()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        
        layer.masksToBounds = false
        layer.shadowRadius = 2
        layer.shadowColor = shadowColor?.CGColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
        layer.shadowOpacity = shadowOpacity
        layer.shadowPath = shadowPath.CGPath

        
        spring.customLayoutSubviews()
    }
    
    public func animate() {
        self.spring.animate()
    }
    
    public func animateNext(completion: () -> ()) {
        self.spring.animateNext(completion)
    }
    
    public func animateTo() {
        self.spring.animateTo()
    }
    
    public func animateToNext(completion: () -> ()) {
        self.spring.animateToNext(completion)
    }
}



public class SpringView: UIView, Springable {
    @IBInspectable public var autostart: Bool = false
    @IBInspectable public var autohide: Bool = false
    @IBInspectable public var animation: String = ""
    @IBInspectable public var force: CGFloat = 1
    @IBInspectable public var delay: CGFloat = 0
    @IBInspectable public var duration: CGFloat = 0.7
    @IBInspectable public var damping: CGFloat = 0.7
    @IBInspectable public var velocity: CGFloat = 0.7
    @IBInspectable public var repeatCount: Float = 1
    @IBInspectable public var x: CGFloat = 0
    @IBInspectable public var y: CGFloat = 0
    @IBInspectable public var scaleX: CGFloat = 1
    @IBInspectable public var scaleY: CGFloat = 1
    @IBInspectable public var rotate: CGFloat = 0
    @IBInspectable public var curve: String = ""
    
    //@IBInspectable var shadowOpacity: Float = 3
    
    
    public var opacity: CGFloat = 1
    public var animateFrom: Bool = false

    lazy private var spring : Spring = Spring(self)

    override public func awakeFromNib() {
        super.awakeFromNib()
        self.spring.customAwakeFromNib()
    }

    public override func layoutSubviews() {
        super.layoutSubviews()
        
        //layer.shadowOpacity = shadowOpacity
        
        spring.customLayoutSubviews()
    }
    
    public func animate() {
        self.spring.animate()
    }

    public func animateNext(completion: () -> ()) {
        self.spring.animateNext(completion)
    }

    public func animateTo() {
        self.spring.animateTo()
    }

    public func animateToNext(completion: () -> ()) {
        self.spring.animateToNext(completion)
    }
}