//
//  ViewController.swift
//  Happy or Sad
//
//  Created by William Chan on 2019-11-18.
//  Copyright © 2019 WilliamChan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageEntered: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

// connet button to code
    @IBAction func analyse(_ sender: Any) {
        guard let message = messageEntered.text else{
            print("Please enter something")

            return
            if messageEntered.count > 225{
                print("Please enter something")
            }
            
        }
    }
}

// MARK: Methods
var happyCount = 0
var sadCount = 0
for messageEntered in {
    
}

if happyCount = 0 && sadCount = 0 {
    print("none")
} else if happyCount == sadCount {
    print("unsure")
} else if happyCount > sadCount {
    print("happy")
} else if happyCount < sadCount {
    print("sad")
}
