//
//  ViewController.swift
//  RockScisserPaper
//
//  Created by Tasnuva Haque on 2020-02-03.
//  Copyright © 2020 Tasnuva Haque. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var imagePlayer1: UIImageView!
    
    @IBOutlet var imagePlayer2: UIImageView!
    
    let imageNames = ["rock","paper", "scissors" ]
    
    
    @IBAction func player1Go(_ sender: Any) {
        
        let randomImage1 = imageNames.randomElement()
        
        if let imageName = randomImage1{
                    imagePlayer1.image = UIImage(named:imageName)
                 }
    }
    
    @IBAction func player2Go(_ sender: Any) {
        
        let randomImage = imageNames.randomElement()
                        
               if let imageName = randomImage{
                           imagePlayer2.image = UIImage(named:imageName)
                        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

