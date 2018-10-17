// Created on: Oct 2018
// Created by: Amin Zeina
// Created for: ICS3U
// This program plays rock, paper, scissors 

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let RANDOM_NUMBER : Int = Int(arc4random_uniform(3) + 1)
    
    let instructionLabel = UILabel()
    let numberEnteredTextField = UITextField()
    let checkButton = UIButton()
    let resultLabel = UILabel()
    let randomNumberLabel = UILabel()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Enter 1 for rock, 2 for paper, and 3 for scissors"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        numberEnteredTextField.borderStyle = UITextBorderStyle.roundedRect
        numberEnteredTextField.placeholder = "Enter 1, 2 or 3"
        view.addSubview(numberEnteredTextField)
        numberEnteredTextField.translatesAutoresizingMaskIntoConstraints = false
        numberEnteredTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        numberEnteredTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        checkButton.setTitle("Go!", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        checkButton.addTarget(self, action: #selector(checkWinner), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: numberEnteredTextField.bottomAnchor, constant: 20).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        resultLabel.text = nil
        view.addSubview(resultLabel)
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        resultLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        randomNumberLabel.text = String(RANDOM_NUMBER)
        view.addSubview(randomNumberLabel)
        randomNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        randomNumberLabel.topAnchor.constraint(equalTo:  view.bottomAnchor, constant: -40).isActive = true
        randomNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    @objc func checkWinner() {
        let numberEntered : Int = Int(numberEnteredTextField.text!)!
        var randomNumberAsWord : String? = nil
        
        if RANDOM_NUMBER == 1 {
            randomNumberAsWord = "Rock"
        } else if RANDOM_NUMBER == 2 {
            randomNumberAsWord = "Paper"
        } else {
            randomNumberAsWord = "Scissors"
        }
        
        if numberEntered >= 1 && numberEntered <= 3 {
            if numberEntered == RANDOM_NUMBER {
                resultLabel.text = "Its a tie. The computer chose \(randomNumberAsWord!)"
            } else if numberEntered == 1 {
                if RANDOM_NUMBER == 2 {
                    resultLabel.text = "You lose. The computer chose \(randomNumberAsWord!)"
                } else {
                    resultLabel.text = "You Win! The computer chose \(randomNumberAsWord!)"
                }
            } else if numberEntered == 2 {
                if RANDOM_NUMBER == 3 {
                    resultLabel.text = "You lose. The computer chose \(randomNumberAsWord!)"
                } else {
                    resultLabel.text = "You Win! The computer chose \(randomNumberAsWord!)"
                }
            } else if numberEntered == 3 {
                if RANDOM_NUMBER == 1 {
                    resultLabel.text = "You lose. The computer chose \(randomNumberAsWord!)"
                } else {
                    resultLabel.text = "You Win! The computer chose \(randomNumberAsWord!)"
                }
            } else {
                resultLabel.text = "Invalid input"
            }
            
        } else {
            resultLabel.text = "Invalid input"
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

liam was here
