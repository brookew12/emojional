//
//  ViewController.swift
//  emojional
//
//  Created by Apple on 7/25/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit


  let emojis = ["📖" : "book", "💆🏾‍♀️" : "massage"]
let customMessages = ["book" : ["keep working!", "work harder!", "don't give up!", "don't you want to go to college", "just keep reading, just keep reading reading reading"], "massage" : ["take a break!", "go watch something", "eat food!!!", "you deserve to chill", "pat yourself on the back"]]

class ViewController: UIViewController {

    @IBAction func showMessage(sender : UIButton) {
        // in as much detail as possible
        // pseudo-code the things that need to happen
        // when a user clicks an emoji button
        
          let selectedEmotion = sender.titleLabel?.text
      
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[Int.random(in: 0...4)]
        
        let alertController = UIAlertController(title: "Let Emojional give you advice!", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
       present(alertController, animated: true, completion: nil)
        
   
     
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

