//
//  ViewController.swift
//  Forecast
//
//  Created by xy on 16/4/7.
//  Copyright © 2016年 yuenvshen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var currentTemo: UILabel!
    @IBOutlet weak var currentSummary: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = NSURL(string: "https://api.forecast.io/forecast/d3250bf407f0579c8355cd39cdd4f9e1/37.7833,122.4167") {
            if let data = NSData(contentsOfURL: url){
            
                do {
                    let parsed = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments) // 1
                    
                    let newDict = parsed as? NSDictionary // 2
                    print(newDict!["currently"]!["summary"])
                    
                    
                    currentTemo.text = "\(newDict!["currently"]!["temperature"]!!)"
                    currentSummary.text = "\(newDict!["currently"]!["summary"]!!)"

                }
                catch let error as NSError {
                    print("A JSON parsing error occurred, here are the details:\n \(error)") // 3
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

