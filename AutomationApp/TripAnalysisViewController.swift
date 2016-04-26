//
//  TripAnalysisViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/22/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

class TripAnalysisViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {

   @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var menuButton1: UINavigationBar!
    
    @IBOutlet weak var scrollView: UIScrollView!
    var tripArray = ["FOCUS","CAUTION","SAFETY","DPM","VMP"]
    
    @IBOutlet weak var facusView: UIView!
    
    @IBOutlet weak var cautionView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
         scrollView.contentSize = CGSize(width:315, height: 600)
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
        return 5
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("tripCell", forIndexPath: indexPath) as! DashBoardCollectionViewCell
        
        cell.tripLable.text = tripArray[indexPath.row]
        return cell
    }
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
        var cell = collectionView.cellForItemAtIndexPath(indexPath)
        
        var check = false
        
        
        if ((cell?.selected) != nil)
        {
            print("This is selected ")
        }
        if(indexPath.item == 0)
        {
            //cell!.backgroundColor = UIColor.orangeColor()
            facusView.hidden = false
            cautionView.hidden = true
            
            
        }
        
        
        if(indexPath.item == 1)
        {
            //cell!.backgroundColor = UIColor.orangeColor()
            facusView.hidden = true
            cautionView.hidden = false
            
            
        }

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
