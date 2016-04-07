//
//  ViewController.swift
//  TableViewtvOS
//
//  Created by xy on 16/4/7.
//  Copyright © 2016年 haro. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    var dataArray = ["San Francisco", "San Diego", "Los Angeles", "San Jose", "Mountain View", "Sacramento"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return self.dataArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "mycell")

        cell.textLabel?.text = "\(self.dataArray[indexPath.row])"
        cell.detailTextLabel?.text = "Hello from sub title \(indexPath.row + 1)"
        return cell
    }


}

