//
//  GameViewController.swift
//  SwiftPortfolio
//
//  Created by Nandhakumar, Nakul on 3/9/20.
//  Copyright © 2020 Nandhakumar, Nakul. All rights reserved.
//

import UIKit
class SqaureController: UIViewController {
    
    // IBOutlet connects to Storyboard items, I had problems with Drag
    @IBOutlet weak var length: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var area: UILabel!
    
    let side = ("0.0", "0.0", "0.0")
    // Loads at initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Outlets
        length.text = side.0
        height.text = side.1
        area.text = side.2
    }

    // IBAction created with Drag from Storyboard
   @IBAction func calculate(sender: UIButton) {
        // let is for values that are not modified
        let s1 = Float(length.text!) // Input value, !(Bang) avoids errors
        let s2 = Float(height.text!)

        // Pythagorean Calculation
        let s3 = s1! * s2!

        // Set calculation to screen
        area.text = String(s3)
    print("Pyth  \(area.text!)")
    
    }
}
