//
//  DashboardViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/21/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

//class DashboardViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}




class WalkThruViewController: UIViewController {
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var containerView: UIView!
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    var tutorialPageViewController: PageViewController? {
        didSet {
            tutorialPageViewController?.tutorialDelegate = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.hidden = true
        
        pageControl.addTarget(self, action: "didChangePageControlValue", forControlEvents: .ValueChanged)
        
        UIView.transitionWithView(self.view, duration: 0.5, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            }, completion: { (fininshed: Bool) -> () in
        })
        
        nextButton.layer.cornerRadius = 15
        nextButton.layer.borderWidth = 1
        nextButton.layer.borderColor = UIColor.blackColor().CGColor
        
        //var radioButtonController = SSRadioButtonsController()
        //radioButtonController.setButtonsArray([button1!,button2!])
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let tutorialPageViewController = segue.destinationViewController as? PageViewController
        {
            self.tutorialPageViewController = tutorialPageViewController
        }
    }
    
    @IBAction func didTapNextButton(sender: UIButton) {
        tutorialPageViewController?.scrollToNextViewController()
    }
    
    /**
     Fired when the user taps on the pageControl to change its current page.
     */
    func didChangePageControlValue() {
        tutorialPageViewController?.scrollToViewController(index: pageControl.currentPage)
    }
}

extension WalkThruViewController: PageViewControllerDelegate {
    
    func tutorialPageViewController(tutorialPageViewController: PageViewController,
                                    didUpdatePageCount count: Int) {
        pageControl.numberOfPages = count
    }
    
    func tutorialPageViewController(tutorialPageViewController: PageViewController,
                                    didUpdatePageIndex index: Int) {
        pageControl.currentPage = index
    }
    
    
    
    
}
