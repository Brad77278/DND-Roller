//
//  ViewController.swift
//  D&D ROLLER
//
//  Created by Bradley Gray on 4/9/20.
//  Copyright © 2020 Bradley Gray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rollResult: UILabel!
    @IBOutlet weak var die: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var numOfRolls: UILabel!
    
    var x = 0
    var y = 0
    var z = 0
    
    //Functions once called will generate random numbers simulating the rolling of dice and update number of rolls
    //and the result of the rolls combined
    
    func diceRollD4 () {
        let number = Int.random(in: 1 ... 4)
        rollResult.text = String(number)
        y = y + number
        result.text = String(y)
        z += 1
        numOfRolls.text = String(z)
    }
    
    func diceRollD6() {
        let number = Int.random(in: 1 ... 6)
        rollResult.text = String(number)
        y = y + number
        result.text = String(y)
        z += 1
        numOfRolls.text = String(z)
    }
    
    func diceRollD8() {
        let number = Int.random(in: 1 ... 8)
        rollResult.text = String(number)
        y = y + number
        result.text = String(y)
        z += 1
        numOfRolls.text = String(z)
    }
    
    func diceRollD10() {
        let number = Int.random(in: 1 ... 10)
        rollResult.text = String(number)
        y = y + number
        result.text = String(y)
        z += 1
        numOfRolls.text = String(z)
    }
    
    func diceRollD12() {
        let number = Int.random(in: 1 ... 12)
        rollResult.text = String(number)
        y = y + number
        result.text = String(y)
        z += 1
        numOfRolls.text = String(z)
    }
    
    func diceRollD20() {
        let number = Int.random(in: 1 ... 20)
        rollResult.text = String(number)
        y = y + number
        result.text = String(y)
        z += 1
        numOfRolls.text = String(z)
    }
    
    
    //reset values back to zero and clear screen
    func reset() {
        die.text = " "
        z = 0
        y = 0
        x = 0
        numOfRolls.text = " "
        result.text = " "
        rollResult.text = " "
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    //buttons for each dice
    }

    @IBAction func D4(_ sender: UIButton) {
        die.text = "D4"
        x = 1
        numOfRolls.text = " "
        result.text = " "
        rollResult.text = " "
        y = 0
        z = 0
    }
    
    
    @IBAction func D6(_ sender: UIButton) {
        die.text = "D6"
        x = 2
        numOfRolls.text = " "
        result.text = " "
        rollResult.text = " "
        y = 0
        z = 0
    }
    
    
    @IBAction func D8(_ sender: UIButton) {
        die.text = "D8"
        x = 3
        numOfRolls.text = " "
        result.text = " "
        rollResult.text = " "
        y = 0
        z = 0
    }
    
    @IBAction func D10(_ sender: UIButton) {
        die.text = "D10"
        x = 4
        numOfRolls.text = " "
        result.text = " "
        rollResult.text = " "
        y = 0
        z = 0
    }
    
    @IBAction func D12(_ sender: UIButton) {
        die.text = "D12"
        x = 5
        numOfRolls.text = " "
        result.text = " "
        rollResult.text = " "
        y = 0
        z = 0
    }
    
    @IBAction func D20(_ sender: UIButton) {
        die.text = "D20"
        x = 6
        numOfRolls.text = " "
        result.text = " "
        rollResult.text = " "
        y = 0
        z = 0
    }
    
    
    //button for rolling the selected dice
    @IBAction func roll(_ sender: UIButton) {
        if x == 1 {
            diceRollD4()
        }
        else if x == 2 {
            diceRollD6()
        }
        else if x == 3 {
            diceRollD8()
        }
        else if x == 4 {
            diceRollD10()
        }
        else if x == 5 {
            diceRollD12()
        }
        else if x == 6 {
            diceRollD20()
        }
    }
    
    //Reset button
    @IBAction func reset(_ sender: UIButton) {
        reset()
    }
    
    
}

