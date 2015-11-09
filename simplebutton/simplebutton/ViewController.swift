//
//  ViewController.swift
//  simplebutton
//
//  Copyright (c) 2015 K Kollmann.
//  All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
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

    @IBAction func buttonPress(sender: UIButton) {
        if (myLabel.text == "hello,") {
            myLabel.text = "world!"
        } else {
            myLabel.text = "hello,"
        }
    }

}

