//
//  RootAssistantViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/22/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

class RouteAssistantViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var pertolView: UIView!
    
    
    @IBOutlet weak var FoodVIew: UIView!
    
    @IBOutlet weak var airportView: UIView!
    
    @IBOutlet weak var entertainmentView: UIView!
    
    
    @IBOutlet weak var userProfilePic: UIImageView!
    
    
    var assistantLableArray = ["PETROL","AIRPORT","FOOD","ENTAIRTENMAIN"]
    var assistantImageArray = ["Car-100","Airplane Mode On Filled-100","Pizza Filled-100 (1)","Park Concert Shell-96 (1)"]
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSize(width:320, height: 750)
        pertolView.hidden = false
        FoodVIew.hidden = true
        airportView.hidden = true
        
        entertainmentView.hidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        scrollView.contentSize = CGSize(width: 320, height: 700)
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
        let routeCell = collectionView.dequeueReusableCellWithReuseIdentifier("routeCell", forIndexPath: indexPath) as! DashBoardCollectionViewCell
        
        routeCell.layer.borderWidth = 2.0
        routeCell.layer.borderColor = UIColor.whiteColor().CGColor
     
        routeCell.routeAssistantImageView.image = UIImage(named: assistantImageArray[indexPath.row])
        routeCell.routeAssistantLabel.text = assistantLableArray[indexPath.row]
        
        return routeCell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
        var cell = collectionView.cellForItemAtIndexPath(indexPath) as! DashBoardCollectionViewCell
        
        var check = false
        
        
//        if ((cell.selected) != nil)
//        {
//            print("This is selected ")
//        }
        
        
        if(indexPath.item == 0)
        {
            //cell!.backgroundColor = UIColor.orangeColor()
            
            
            //cell.routeAssistantImageView.image = UIImage(named: "Car-100 (1)")
            entertainmentView.hidden = true
            FoodVIew.hidden = true
            pertolView.hidden = false
            airportView.hidden = true
        }
        
        if(indexPath.item == 1)
        {
            //cell.routeAssistantImageView.image = UIImage(named: "Airplane Mode On Filled-100 (1)")
            //cell!.backgroundColor = UIColor.orangeColor()
            entertainmentView.hidden = true
            FoodVIew.hidden = true
            pertolView.hidden = true
            airportView.hidden = false
            
        }

        
        if(indexPath.item == 2)
        {
            //cell.routeAssistantImageView.image = UIImage(named: "Pizza Filled-100")
            //cell!.backgroundColor = UIColor.orangeColor()
            entertainmentView.hidden = true
            FoodVIew.hidden = false
            pertolView.hidden = true
            airportView.hidden = true
            
        }
        
        if(indexPath.item == 3)
        {
           // cell.routeAssistantImageView.image = UIImage(named: "Park Concert Shell-96")
            //cell!.backgroundColor = UIColor.orangeColor()
            entertainmentView.hidden = false
            FoodVIew.hidden = true
            pertolView.hidden = true
            airportView.hidden = true
            
        }
        
    }

    
//    func collectionView(collectionView: UICollectionView,
//                        layout collectionViewLayout: UICollectionViewLayout,
//                               sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//        let cellHeight = 100
//        return CGSizeMake(collectionView.bounds.size.width/2, CGFloat(cellHeight))
//    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
