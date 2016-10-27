//
//  ViewController.swift
//  ClosuresAreGreat
//
//  Created by Jim Campagno on 10/24/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        performOperation(with: 5, 2, -9, operation: -)
        
        
       
        
        }
    
    func performOperation(with numbers:Double... ,operation: @escaping (Double,Double) ->Double) {
        var newNumbers = numbers
         newNumbers.removeFirst()
        let result = newNumbers.reduce(numbers[0]) { (total: Double, nextInLine: Double) -> Double in
            print("Total is \(total)")
            print("Next In Line is \(nextInLine)")
            let resultOfOperation = operation(total, nextInLine)
            print("Result of oepration is \(resultOfOperation)")
            return resultOfOperation
        }
        
        
        print(result)
    }
    
    }
    
  

    

