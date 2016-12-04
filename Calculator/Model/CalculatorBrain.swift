//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Developer on 10/1/16.
//  Copyright © 2016 Hyungsuk. All rights reserved.
//

import Foundation

func multiply(op1: Double, op2: Double) -> Double{
    return op1*op2
}

func divide(op1: Double, op2: Double) -> Double{
    return op1/op2
}
func add(op1: Double, op2: Double) -> Double {
    return op1+op2
}

func subtract(op1: Double, op2: Double) -> Double{
    return op1-op2
}
class CalculatorBrain
{
    private var accumulator : Double = 0.0
    
    func setOperand(operand : Double) {
        accumulator = operand
    }
    
    var operations : Dictionary<String, Operation> = [
        "π" : Operation.Constant(M_PI), // M_PI
        "e" : Operation.Constant(M_E), // M_E
        "√" : Operation.UnaryOperation(sqrt), // sqrt,
        "cos" : Operation.UnaryOperation(cos), // cos
        "✕" : Operation.BinaryOperation(multiply),
        "÷" : Operation.BinaryOperation(divide),
        "＋" : Operation.BinaryOperation(add),
        "-" : Operation.BinaryOperation(subtract),
        "=" : Operation.Equals
        ]
    
    enum Operation {
        case Constant(Double)
        case UnaryOperation((Double) -> Double)
        case BinaryOperation((Double,Double) -> Double)
        case Equals
    }
    
    func performOperation(symbol  : String) {
        if let operation = operations[symbol] {
            switch operation {
            case .Constant(let value):
                accumulator = value
            case .UnaryOperation(let function):
                accumulator = function(accumulator)
            case .BinaryOperation(let function):
                pending = PendingBinaryOperationInfo(binaryFunciton: function, firstOperand: accumulator)
            case .Equals:
                executePendingBinaryOperation()
            }
        }
    }
    
    private func executePendingBinaryOperation() {
        if pending != nil {
            accumulator = pending!.binaryFunciton(pending!.firstOperand, accumulator)
            pending = nil
        }
    }
    
    private var pending: PendingBinaryOperationInfo?
    
    struct PendingBinaryOperationInfo {
        var binaryFunciton: (Double, Double) -> Double
        var firstOperand: Double
    }
    
    var result : Double {
        get {
            return accumulator
        }
        set {
            
        }
    }
}
