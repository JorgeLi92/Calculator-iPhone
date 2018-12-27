//
//  ViewController.swift
//  Calculator
//
//  Created by Jorge Elias Blanco Santonja on 26/12/18.
//  Copyright © 2018 Jorge Elias Blanco Santonja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    
    var result:Float = 0
    var actualNumber:Float = 0
    var actualOperation:String = "="
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //On start, the first number is 0
        resultLabel.text = "\(result)"
    }
    
    //Recollect all numbers
    @IBAction func buttons(_ sender: UIButton) {
        //Operation: 1º number * 10 + 2º number
        actualNumber = actualNumber * 10 + Float(Int(sender.titleLabel!.text!)!)
        //Print on the label the 1º number to operate & substitute the 1º result (0) for actualnuber (X).
        resultLabel.text = "\(actualNumber)"
    }
    
    //Recollect all operators
    @IBAction func opeartors(_ sender: UIButton) {
        // The operation is result?(final result) = result(1º number to operate thet we create before) + actualNumber (the new number)
        switch actualOperation {
            case "=":
                result = actualNumber
            case "+":
                result = result + actualNumber
            case "-":
                result = result - actualNumber
            case "*":
                result = result * actualNumber
            case "/":
                result = result / actualNumber
            default:
                print("Error o.O")
        }
        
        actualNumber = 0
        resultLabel.text = ("\(result)")
        
        if(sender.titleLabel!.text == "="){
            result = 0
        }
        
        actualOperation = sender.titleLabel!.text! as String
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        result = 0
        actualNumber = 0
        actualOperation = "="
        
        resultLabel.text = ("\(result)")
    }
    


}

