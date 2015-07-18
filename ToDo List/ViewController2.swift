//
//  ViewController2.swift
//  ToDo List
//
//  Created by clark hinchcliff on 18/07/2015.
//  Copyright (c) 2015 Clark Hinchcliff. All rights reserved.
//

import UIKit

var toDoDict = [String: String]()

class ViewController2: UIViewController {

    @IBOutlet weak var toDoIn: UITextField!
    
    @IBOutlet weak var dateIn: UITextField!
    
    @IBAction func submit(sender: AnyObject) {
        toDoDict[dateIn.text] = toDoIn.text
        for to in toDoDict {
            println(to)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
