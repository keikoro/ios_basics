//
//  SecondScreenViewController.swift
//  secondscreen
//
//  Created by Kay on 30/11/15.
//  Copyright © 2015 KK. All rights reserved.
//

import UIKit

class SecondScreenViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var input = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // change corner radius of label
        displayLabel.clipsToBounds = true
        displayLabel.layer.cornerRadius = 20

        if let numberInput = Int(input) {
            if (numberInput == 1 || numberInput == 0) {
                print(input)
                displayLabel.text = "\(input) it is..."
            } else {
                print(input)
                displayLabel.text = "nope"
            }
        } else {
            print(input)
            displayLabel.text = "uh-nuh"
        }

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
