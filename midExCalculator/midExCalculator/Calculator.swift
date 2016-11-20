//
//  Calculator.swift
//  midExCalculator
//
//  Created by mac on 2016/11/20.
//  Copyright © 2016年 VictorBasic. All rights reserved.
//

import Foundation

class Calculation{
    var operandA:Int = 0
    var operandB:Int = 0
    var result:Int = 0
    var op:String = ""
    var isFirstOperand:Bool = false
    
    init() {
        operandA = 0
        operandB = 0
    }




func calcResult() -> Int{
    switch op {
    case "+":
        result = operandA + operandB
    case "-":
        result = operandA - operandB
    case "*":
        result = operandA * operandB
    case "/":
        result = operandA / operandB
        
    default:
        result = 0
        
    }
return result
}
}
