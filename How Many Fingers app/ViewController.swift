//
//  ViewController.swift
//  How Many Fingers app
//
//  Created by Robert Jackson Jr on 8/12/17.
//  Copyright © 2017 Robert Jackson Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fingersTextField: UITextField!
    
    
    @IBAction func guess(_ sender: Any) {
        
        
        let diceRoll = String(arc4random_uniform(6))
        
        if fingersTextField.text == diceRoll {
            resultLabel.text = "You're right!"
        } else {
            resultLabel.text = "Wrong! It was a " + diceRoll + "."
        }
        
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

