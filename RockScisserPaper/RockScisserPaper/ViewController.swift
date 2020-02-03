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
    
    var first_Image:String = ""
    var second_Image:String = ""
    
    @IBOutlet var result: UILabel!
    
    @IBAction func player1Go(_ sender: Any) {
        let randomImage1 = imageNames.randomElement()
         
         if let imageName1 = randomImage1{
                     imagePlayer1.image = UIImage(named:imageName1)
                         first_Image = imageName1 }
        
    }

    
    @IBAction func player2Go(_ sender: Any) {
        let randomImage2 = imageNames.randomElement()
                               
                      if let imageName2 = randomImage2{
                                  imagePlayer2.image = UIImage(named:imageName2)
                                 second_Image = imageName2}
        
      if first_Image == "rock" && second_Image == "scissors"{
            result.text = "Person1 wins"
        }else if first_Image == "scissors" && second_Image == "rock"{
            result.text = "Person2 wins"
        }else if first_Image == "scissors" && second_Image == "paper"{
            result.text = "Person1 wins"
        }else if first_Image == "paper" && second_Image == "scissors"{
            result.text = "Person2 wins"
        }else if first_Image == "paper" && second_Image == "rock"{
            result.text = "Person1 wins"
        }else if first_Image == "rock" && second_Image == "paper"{
            result.text = "Person2 wins"
        }else{
            result.text = "Match Draw"
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

