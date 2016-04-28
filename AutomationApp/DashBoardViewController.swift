//
//  DashBoardViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/21/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

import MapKit

class DashBoardViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var profilePicImageView: UIImageView!
    
    @IBOutlet weak var mapViewLastTrip: MKMapView!
    
    @IBOutlet weak var tpmsView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var welcomeUserView: UIView!
    
    
    @IBOutlet weak var simpleButton: UIButton!
    
    
    @IBOutlet weak var barButton: UIBarButtonItem!
    
    var util = Util()
    var numberArray = ["78","80%","9"]
    var textArray = ["Trips","Driving score","Area of improvment"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
       // modalTransitionStyle = .FlipHorizontal
     barButton = UIBarButtonItem()
    
        if self.revealViewController() != nil
        {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        self.revealViewController().rearViewRevealWidth = 250
        
        
        scrollView.contentSize = CGSize(width:320, height: 600)

        util.roundImage(profilePicImageView)
        
        
        UIView.animateWithDuration(0.0,
                                   animations:
            {
                self.containerView.frame = CGRect(x: 10, y: 150, width: 409, height: 43)
                

        })
    }
    
    func buttonTwoPressed()
    {
        print("buttonTwoPressed")
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
        return 3
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        if (indexPath.row == 0)
        {
        let categoryCell = collectionView.dequeueReusableCellWithReuseIdentifier("tripCell", forIndexPath: indexPath) as! DashBoardCollectionViewCell

//        categoryCell.numberLable.text = numberArray[indexPath.row]
//        
//        categoryCell.textLabel.text = textArray[indexPath.row]
        categoryCell.layer.borderWidth = 1
        categoryCell.layer.borderColor = UIColor.lightGrayColor().CGColor
        
        return categoryCell
        }
        
        if (indexPath.row == 1)
        {
            let categoryCell = collectionView.dequeueReusableCellWithReuseIdentifier("tripCell2", forIndexPath: indexPath) as! DashBoardCollectionViewCell
            categoryCell.layer.borderWidth = 1
            categoryCell.layer.borderColor = UIColor.lightGrayColor().CGColor
            
            return categoryCell
        }
        
       else
        {
            let categoryCell = collectionView.dequeueReusableCellWithReuseIdentifier("tripCell3", forIndexPath: indexPath) as! DashBoardCollectionViewCell
            
          
            categoryCell.layer.borderWidth = 1
            categoryCell.layer.borderColor = UIColor.lightGrayColor().CGColor
            return categoryCell
        }
        
        
        
    }
    
  
        func collectionView(collectionView: UICollectionView,
                            layout collectionViewLayout: UICollectionViewLayout,
                                   sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
            let cellHeight = 80
            
//            if(indexPath.row == 0)
//            {
//              return CGSizeMake(collectionView.bounds.size.width/4, collectionView.bounds.size.height)
//            }
//            else
//            {
            return CGSizeMake(collectionView.bounds.size.width/3, collectionView.bounds.size.height)
//            }
        }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func tpmsCancelButtonPressed(sender: AnyObject)
    {
        
        print("YOu have pressed cancel")
        
        
        UIView.animateWithDuration(0.3,
                                   animations:
                                    {
                                    self.containerView.frame = CGRect(x: 8, y: 0, width: 409, height: 43)

                                    self.containerView.alpha = 1
                                    self.tpmsView.hidden = true
                                       
                                    })


    }
    
    
    
}
