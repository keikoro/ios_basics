//
//  ViewController.swift
//  simplebutton
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
            
            if (fieldValue == 0) {
                myLabel.text = "zero"
                myButton.setTitle("clicky", forState: .Normal)
                
            } else if (fieldValue == 1) {
                myLabel.text = "one"
                myButton.setTitle("clicky", forState: .Normal)
                
            } else {
                myLabel.text = "nope"
                myButton.setTitle("try again", forState: .Normal)
            }
        } else {
            print("invalid value entered")
            myLabel.text = "nope"
            myButton.setTitle("try again", forState: .Normal)
        }
    }
}

