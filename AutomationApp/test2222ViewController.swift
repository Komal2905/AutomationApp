//
//  test2222ViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/29/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit

class test2222ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func barbuttonBavkpreesed(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
         navigationController?.popViewControllerAnimated(true)
    }
 

}
