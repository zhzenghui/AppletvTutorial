//
//  ViewController.swift
//  CapitaltvOS
//
//  Created by xy on 16/4/7.
//  Copyright © 2016年 haro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func button0Tapped(sender: AnyObject) {
        showAlert("Wrong!", title: "Bummer, you got it wrong!")

    }

    @IBAction func button1Tapped(sender: AnyObject) {
        showAlert("Correct!", title: "Whoo! That is the correct response")

    }
    @IBAction func button2Tapped(sender: AnyObject) {
        showAlert("Wrong!", title: "Bummer, you got it wrong!")

    }
    @IBAction func button3Tapped(sender: AnyObject) {
        showAlert("Wrong!", title: "Bummer, you got it wrong!")

    }
    
    func showAlert(status: String, title:String) {
        let alertController = UIAlertController(title: status
            , message: title, preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (ACTION) -> Void in
            
        }
        
        alertController.addAction(cancelAction);
        
        let ok = UIAlertAction(title: "ok", style: .Default) { (ACTION) -> Void in
            
        }
        
        alertController.addAction(ok)
        
        self.presentViewController(alertController, animated: true) { () -> Void in
            
        }
    }
}

