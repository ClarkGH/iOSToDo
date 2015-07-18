//
//  ViewController.swift
//  ToDo List
//
//  Created by clark hinchcliff on 18/07/2015.
//  Copyright (c) 2015 Clark Hinchcliff. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoDict.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "cell")
        
        let date = Array(toDoDict.keys)
        
        let todoItem = Array(toDoDict.values)
        
        cell.textLabel?.text = date[indexPath.row]

        cell.detailTextLabel?.text = todoItem[indexPath.row]
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

