//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    let imageLiterals = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Display random dice roll when the app loads up.
        diceImageViewOne.image = UIImage(imageLiteralResourceName: imageLiterals.randomElement()!)
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: imageLiterals.randomElement()!)
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // Everytime the user presses the Roll button display random dice roll.
        diceImageViewOne.image = UIImage(imageLiteralResourceName: imageLiterals.randomElement()!)
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: imageLiterals.randomElement()!)
    }
}
