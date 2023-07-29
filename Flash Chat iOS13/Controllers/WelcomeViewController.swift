//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        titleLabel.text=""
        var charIndex=0.0// we created the variable charIndex because we want to delay the timer for each letter in the loop
        let titleText="⚡️FlashChat"
        for letters in titleText{
            print(0.2*charIndex)
            print(letters)
            Timer.scheduledTimer(withTimeInterval: 0.2*charIndex, repeats: false) { timer in
                self.titleLabel.text?.append(letters)// watch closure
            }
            charIndex=charIndex+1// every time the loop will run charIndex will increase to 1 and move to next letter and appl the timer to the letter
           
        }
    }
    

}
