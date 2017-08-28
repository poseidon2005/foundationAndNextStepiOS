//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Jay Hall on 6/8/17.
//  Copyright © 2017 Jay Hall. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var outPutLbl: UILabel!
    
    var btnSound: AVAudioPlayer!
    
    enum Operation: String {
        case Divide = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add = "+"
        case Empty = "Empty"
        }
    

    var currentOperation = Operation.Empty
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    var result = ""





    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        let soundURL = URL(fileURLWithPath: path!)
        
        
        do {
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
@IBAction func numberPressed(sender: UIButton) {
    playSound()
    runningNumber += "\(sender.tag)"
    outPutLbl.text = runningNumber
        
}
@IBAction func onDividePressed(sender: Any) {
    processOperation(operation: .Divide)
    
}
@IBAction func onMultiplyPressed(sender: Any) {
    processOperation(operation: .Multiply)
    
}
@IBAction func onSubtractPressed(sender: Any) {
    processOperation(operation: .Subtract)
    
}
@IBAction func onAddPressed(sender: Any) {
    processOperation(operation: .Add)
    
}
@IBAction func onEqualPressed(sender: Any) {
    processOperation(operation: currentOperation)
}

func playSound() {
            if btnSound.isPlaying {
                btnSound.stop()
            }
            btnSound.play()
        }

func processOperation(operation: Operation) {
    playSound()
    if currentOperation != Operation.Empty {
        
        //A user selected an operator, but then selected another operator without first entering a number
        if runningNumber != "" {
            rightValStr = runningNumber
            runningNumber = ""
            
            if currentOperation == Operation.Multiply {
                result = "\(Double(leftValStr)! * Double(rightValStr)!)"
            } else if currentOperation == Operation.Divide {
                result = "\(Double(leftValStr)! / Double(rightValStr)!)"
            } else if currentOperation == Operation.Subtract {
                result = "\(Double(leftValStr)! - Double(rightValStr)!)"
            } else if currentOperation == Operation.Add {
                result = "\(Double(leftValStr)! + Double(rightValStr)!)"
            }
            leftValStr = result
            outPutLbl.text = result
        }
        
        currentOperation = operation
        
    } else {
        //This is the first time an operator has been pressed
        leftValStr = runningNumber
        runningNumber = ""
        currentOperation = operation
        
    }

    
}


}
