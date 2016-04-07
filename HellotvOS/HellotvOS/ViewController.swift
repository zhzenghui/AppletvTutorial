//
//  ViewController.swift
//  HellotvOS
//
//  Created by xy on 16/4/7.
//  Copyright © 2016年 haro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func clickMe(sender: AnyObject) {
        
        clickLabel.text = "click me"
    }
}

