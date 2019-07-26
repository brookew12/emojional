//
//  ViewController.swift
//  emojional
//
//  Created by Apple on 7/25/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit


  let emojis = ["📖" : "don't give up", "💆🏾‍♀️" : "eat food!!!"]

class ViewController: UIViewController {

    @IBAction func showMessage(sender : UIButton) {
        // in as much detail as possible
        // pseudo-code the things that need to happen
        // when a user clicks an emoji button
        
          let selectedEmotion = sender.titleLabel?.text
      
        
        let alertController = UIAlertController(title: "Let Emojional give you advice!", message: selectedEmotion, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
       present(alertController, animated: true, completion: nil)
        
   
     
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

