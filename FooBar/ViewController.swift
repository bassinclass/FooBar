//
//  ViewController.swift
//  FooBar
//
//  Created by Fleischauer, Joseph on 8/15/18.
//  Copyright © 2018 Fleischauer, Joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
      displayLabel.text = String(number)
    }

    @IBAction func onTap(_ sender: Any) {
        number += 1
        if number % 3 == 0 && number % 5 == 0 {
            view.backgroundColor = .red
            displayLabel.text = "Foo\nBar"
        }
        else if number % 3 == 0 {
            view.backgroundColor = .green
            displayLabel .text = "Foo"
        }
        else if number % 5 == 0 {
            view.backgroundColor = .yellow
            displayLabel .text = "Bar"
        }
        else {
            view.backgroundColor = .black
            displayLabel .text = String(number)
        }
    }
    
    @IBAction func onLongPress(_ sender: Any) {
        number = 0
        displayLabel.text = String(number)
        view.backgroundColor = UIColor.black
    }
    
    
    

}

