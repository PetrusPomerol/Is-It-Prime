//
//  ViewController.swift
//  Is-it-Prime
//
//  Created by Phu Nguyen on 9/13/16.
//  Copyright © 2016 Phu Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Num: UITextField!
    
    @IBOutlet weak var Result: UILabel!
    
    @IBAction func IsitPrime(sender: AnyObject) {
        
        if let userEnterString = Num.text {
            
        let numberInteger = Int(userEnterString)
            
            if let number = numberInteger {
                var isPrime = true
            
        if number == 1 {
            
            isPrime = false
        }
            var i = 2
        while i < number {
            if number % i == 0 {
                isPrime = false
            }
            i += 1
        }
               if isPrime == false {
            Result.text = "\(number) is not prime"
                
        }else {
            Result.text = "\(number) is prime"
        }
                
            }
        }
                
        else {
            Result.text = "Please enter a positive whole number"
            }
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
            }

    
    }




