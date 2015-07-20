//
//  ViewController2.swift
//  ToDo List
//
//  Created by clark hinchcliff on 18/07/2015.
//  Copyright (c) 2015 Clark Hinchcliff. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var toDoIn: UITextField!
    
    @IBOutlet weak var dateIn: UITextField!
    
    @IBAction func submit(sender: AnyObject) {
        date.append(dateIn.text)
        todoItem.append(toDoIn.text)
        
        NSUserDefaults.standardUserDefaults().setObject(date, forKey: "TodoDate")
        NSUserDefaults.standardUserDefaults().setObject(todoItem, forKey: "TodoItem")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        toDoIn.resignFirstResponder()
        dateIn.resignFirstResponder()
        return true
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
