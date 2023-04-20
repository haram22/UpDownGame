//
//  ViewController.swift
//  UpDownGame
//
//  Created by 김하람 on 2023/04/19.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    var comNum:Int = Int.random(in: 0...10)
    var inputNum:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = "👋🏻 Hi 👋🏻"
        numberLabel.text = "👇🏻 Select Number 👇🏻"
        print("💻 :",comNum)
    }


    @IBAction func buttonTapped(_ sender: UIButton) {
        var userInput = sender.currentTitle
            
            // string to Int
            if let input = userInput{
                if let number = Int(input){
                    inputNum = number
                }
            }
        numberLabel.text = String(inputNum)
    }
    

    @IBAction func resetTapped(_ sender: UIButton) {
        mainLabel.text = "👋🏻 Hi 👋🏻"
        comNum = Int.random(in: 0...10)
        print("💻💻 :",comNum)
        numberLabel.text = "👇🏻 Select Number 👇🏻"
    }
    
    
    @IBAction func selectTapped(_ sender: UIButton) {
        if comNum > inputNum {
            print("💻 computer : Up ⬆️")
            mainLabel.text = "Up ⬆️"
        } else if comNum < inputNum{
            print("💻 computer : Down ⬇️")
            mainLabel.text = "Down ⬇️"
        } else {
            print("👏🏻 Bingo 👏🏻")
            mainLabel.text = "👏🏻 Bingo 👏🏻"
            comNum = Int.random(in: 0...10)
        }
    }
    
}

