//
//  ViewController.swift
//  secondscreen
//
//  Copyright (c) 2015 K Kollmann.
//  All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // change corner radius of label + button
        myLabel.clipsToBounds = true
        myLabel.layer.cornerRadius = 10
        myButton.layer.cornerRadius = 10
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getValue(myField: UITextField) -> String {
        return myField.text!
    }
    
    func textFieldShouldReturn(myField: UITextField) -> Bool {
        myField.resignFirstResponder()
        return true
    }
    
    @IBAction func buttonPress(sender: UIButton) {
        
        if let fieldValue = Int(getValue(myField)) {
            textFieldShouldReturn(myField)
            print(fieldValue)
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "mySegue") {
            let second = segue.destinationViewController as! SecondScreenViewController
            second.input = self.myField.text!
        }
    }
    
}

