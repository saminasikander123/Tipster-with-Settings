//
//  SettingsViewController.swift
//  tips
//
//  Created by Samina Qazi on 9/8/15.
//  Copyright (c) 2015 Samina Qazi. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var SettingsViewTipSegment: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Load a key from NSUserDefaults
        var defaults = NSUserDefaults.standardUserDefaults()
        var intValue = defaults.integerForKey("defaultTip")
        var dafaultTipValue = defaults.integerForKey("defaultTip")
        
        SettingsViewTipSegment.selectedSegmentIndex = dafaultTipValue
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func DefaultTipChanged(sender: AnyObject) {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(SettingsViewTipSegment.selectedSegmentIndex, forKey: "defaultTip")
        defaults.synchronize()
    }
    
    @IBAction func GoBack(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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
