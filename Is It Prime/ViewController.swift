//
//  ViewController.swift
//  Is It Prime
//
//  Created by JUAN RAMIREZ on 1/19/17.
//  Copyright © 2017 EZ IT Apps, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputAnswer: UILabel!
    
    @IBOutlet weak var inputAnswer: UITextField!
    
    @IBAction func checkPrimeButton(_ sender: Any) {
        
        // Check if there is a value in the text field
        if inputAnswer.text != nil{
            
            if let checkIfNumber = Int(inputAnswer!.text!) {
                
                
                outputAnswer.text = checkForPrime(checkIfNumber: checkIfNumber)
                
                
            } else {
                outputAnswer.text = "Value must be a whole number!"
            }
        } else {
            outputAnswer.text = "Please input a value"
        }
    }
    
    func checkForPrime(checkIfNumber:Int) -> String {
        var interval = 2
        
        if checkIfNumber < 2 {
            return "\(checkIfNumber) is an exception to primes."
        }
        
        while interval < checkIfNumber {
            if checkIfNumber % interval == 0 {
                return "\(checkIfNumber) is not a prime!"
            }
            interval += 1
        }
        return "\(checkIfNumber) is a prime!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

