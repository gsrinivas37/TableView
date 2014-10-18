//
//  ViewController.swift
//  Table View
//
//  Created by Gudla Srinivas on 10/17/14.
//  Copyright (c) 2014 sgudla. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBAction func onButtonPressed(sender: AnyObject) {
        family.append("Sravanthi")
        tableView.reloadData()
    }
    
    @IBOutlet weak var tableView: UITableView!
    var family = ["Seenu", "Nalini", "Narahari", "Lalitha"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return family.count
    }
    
   
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = family[indexPath.row]
        
        return cell
    }
}

