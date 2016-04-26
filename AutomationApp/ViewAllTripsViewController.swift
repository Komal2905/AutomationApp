//
//  ViewAllTripsViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/22/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit
import CoreGraphics

class ViewAllTripsViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource ,UIPopoverPresentationControllerDelegate{

    
    @IBOutlet weak var scrollView: UIScrollView!
    

    @IBOutlet weak var testImageView: UIImageView!
    
    
    var cellNumberArray = ["12","454","400","58%"]
    var cellTextArray = ["Trip Anlyzed","immidiate ToDo","Hours of Driving","Overall Score"]
    override func viewDidLoad() {
        super.viewDidLoad()

       scrollView.contentSize = CGSize(width:315, height: 600)
        
        //let image = UIImage(named : "mapImage")
        let testImage = self.imageWithGradient(UIImage(named : "mapImage"))
        
        testImageView.image = testImage
        

       
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        //#warning Incomplete method implementation -- Return the number of sections
        return 1
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //#warning Incomplete method implementation -- Return the number of items in the section
        return 4
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let dashBoardCell = collectionView.dequeueReusableCellWithReuseIdentifier("dashBoardCell", forIndexPath: indexPath) as! DashBoardCollectionViewCell
        
        dashBoardCell.layer.borderWidth = 2.0
        dashBoardCell.layer.borderColor = UIColor.whiteColor().CGColor
        
        dashBoardCell.allTripTitle.text = cellNumberArray[indexPath.row]
         dashBoardCell.allTripSubTitle.text = cellTextArray[indexPath.row]
    
        return dashBoardCell
    }
    
    func collectionView(collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let cellHeight = 60
        return CGSizeMake(collectionView.bounds.size.width/2, CGFloat(cellHeight))
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let popupView = segue.destinationViewController
        if let popup = popupView.popoverPresentationController
        {
            popup.delegate = self
        }
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle
    {
        return UIModalPresentationStyle.None
    }
    
    
    func imageWithGradient(img:UIImage!) -> UIImage{
        
        UIGraphicsBeginImageContext(img.size)
        
        let context = UIGraphicsGetCurrentContext()
        
        img.drawAtPoint(CGPointMake(0, 0))
        
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let locations:[CGFloat] = [0.0, 1.0]
        let bottom = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).CGColor
        let top = UIColor(red: 0, green: 0, blue: 0, alpha: 0).CGColor
        
        let gradient = CGGradientCreateWithColors(colorSpace,
                                                  [top, bottom], locations)
        
        let startPoint = CGPointMake(img.size.width / 2, img.size.height / 2)
        let endPoint = CGPointMake(img.size.width / 2, img.size.height)
        CGContextDrawLinearGradient(context, gradient, startPoint, endPoint, .DrawsAfterEndLocation)
        
        let finalImage = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return finalImage
    }


}
