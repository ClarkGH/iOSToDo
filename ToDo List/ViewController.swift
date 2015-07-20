//
//  ViewController.swift
//  ToDo List
//
//  Created by clark hinchcliff on 18/07/2015.
//  Copyright (c) 2015 Clark Hinchcliff. All rights reserved.
//

import UIKit

var date = [String]()

var todoItem = [String]()


class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var Table: UITableView!

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return date.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "cell")
        
        cell.textLabel?.text = date[indexPath.row]

        cell.detailTextLabel?.text = todoItem[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
            
        if editingStyle == UITableViewCellEditingStyle.Delete {
            
            todoItem.removeAtIndex(indexPath.row)
            date.removeAtIndex(indexPath.row)
            
            NSUserDefaults.standardUserDefaults().setObject(date, forKey: "TodoDate")
            
            NSUserDefaults.standardUserDefaults().setObject(todoItem, forKey: "TodoItem")
            
            Table.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if NSUserDefaults.standardUserDefaults().objectForKey("TodoDate") != nil {
             date = NSUserDefaults.standardUserDefaults().objectForKey("TodoDate") as! [String]
        }
        
        if NSUserDefaults.standardUserDefaults().objectForKey("TodoItem") != nil {
            todoItem = NSUserDefaults.standardUserDefaults().objectForKey("TodoItem") as! [String]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

