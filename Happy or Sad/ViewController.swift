//
//  ViewController.swift
//  Happy or Sad
//
//  Created by William Chan on 2019-11-18.
//  Copyright © 2019 WilliamChan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: propertites
    @IBOutlet weak var messageEntered: UITextField!
    @IBOutlet weak var messageOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func analyse(_ sender: Any) {
        
//        // Clearing the input and the output
//        messageOutput.text = ""
//        messageEntered.text = ""
        
        // INPUT
        // Protect against bad user input
        // Get user input
        // Make sure input is longer than 0
        guard let message = messageEntered.text, message.count > 0 else {
            // No input was entered, give an error
            messageOutput.text = "Please enter something"
            return
        }
        
        // Now make sure input given is shorter than 255
        if message.count > 255 {
            messageOutput.text = "Please enter a phrase under 255 characters"
            return
        }
        
        // PROCESS
        var happyCount = 0
        var sadCount = 0
        let happyEmoji = "😀😊🙂😄"
        let sadEmoji = "☹️🙁😕😔"

        // Check each character
        // Total up how many sad or happy emojis there are
        for character in message {
            if happyEmoji.contains(character) {
                happyCount += 1
            }
            if sadEmoji.contains(character) {
                sadCount += 1
            }
        }

        // OUTPUT
        if happyCount == 0 && sadCount == 0 {
            messageOutput.text = "none"
        } else if happyCount == sadCount {
            messageOutput.text = "unsure"
        } else if happyCount > sadCount {
            messageOutput.text = "happy"
        } else if happyCount < sadCount {
            messageOutput.text = "sad"
        }
        


    }
    
    
}


