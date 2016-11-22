//
//  FizzBuzzReferee.swift
//  Calculator
//
//  Created by Developer on 24/10/2016.
//  Copyright © 2016 Hyungsuk. All rights reserved.
//

import Foundation
import UIKit

enum FizzBuzz{
    case Fizz, Buzz, FizzBuzz, Number
}

class FizzBuzzReferee: NSObject {
    func judgeResult(inputNumber: Int, inputFizzBuzz: FizzBuzz) -> Bool{
        if inputNumber % 15 == 0 {
            return inputFizzBuzz == FizzBuzz.FizzBuzz
        }
        else if(inputNumber % 3 == 0) {
            return inputFizzBuzz == FizzBuzz.Fizz
        }
        else if inputNumber % 5 == 0 {
            return inputFizzBuzz == FizzBuzz.Buzz
        }
        else {
            return inputFizzBuzz == FizzBuzz.Number
        }
        
    
        
    }
    
}
