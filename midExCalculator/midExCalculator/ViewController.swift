//
//  ViewController.swift
//  midExCalculator
//
//  Created by mac on 2016/11/20.
//  Copyright © 2016年 VictorBasic. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

@IBOutlet weak var messageLabel: UILabel!

@IBOutlet weak var minusButton: UIButton!

@IBOutlet weak var plusButton: UIButton!

@IBOutlet weak var equalButton: UIButton!

@IBOutlet weak var ACButton: UIButton!

@IBOutlet weak var tapDigit: UIButton!

@IBOutlet weak var timesButton: UIButton!

@IBOutlet weak var divideButton: UIButton!

//@IBOutlet weak var tapMinus: UIButton!



var myCal:Calculation?
var isFirstDighit: Bool = true
var hasEqualButton: Bool = true
var operand = 0.0
var result = 0
var digitcount = 0
var digit = 0
var temp : String? = ""


@IBAction func tapAC(sender: UIButton){
    self.messageLabel.text = "0"
    operand = 0
    myCal?.operandA = 0
    myCal?.operandB = 0
    
    myCal?.isFirstOperand = true
    result = 0
    isFirstDighit = true
    hasEqualButton = false
    
}




@IBAction func divideButton(sender:UIButton){
self.processCalc(op: "/")
}

@IBAction func timesButton(sender:UIButton){
    self.processCalc(op: "*")
}

@IBAction func plusButton(sender:UIButton){
    self.processCalc(op: "+")
}

@IBAction func minusButton(sender:UIButton){
    self.processCalc(op: "-")
}

@IBAction func equalButton(sender:UIButton){
    if(!myCal!.isFirstOperand){
    myCal!.operandB = Int(operand)
        result = myCal!.calcResult()
        self.messageLabel.text = String(result)
        myCal?.operandA = result
        hasEqualButton = true
    }
}


@IBAction func tapDigit(sender: UIButton?){
var tempvalue = 0.0
    print(sender!.currentTitle)
    temp = sender!.currentTitle
    digit = Int(temp!)!
    self.messageLabel.text = String(digit)
    //print(self.display_label.text)
    if (isFirstDighit && digit == 0){
        isFirstDighit = true
    }else{
        if (digitcount >= 9){
            return;
        }
        isFirstDighit = false
        self.operand = operand * 10 + Double(digit)
        tempvalue = operand
        self.messageLabel.text = String(tempvalue)
    }
    
}



override func viewDidLoad(){
super.viewDidLoad()
    myCal = Calculation()
    myCal?.isFirstOperand = true;
    isFirstDighit = true
    hasEqualButton = false
    operand = 0.0
}

func processCalc(op:String){
    if (myCal!.isFirstOperand){
        myCal!.operandA = Int(self.operand);
        
        myCal!.isFirstOperand = false
    }else if hasEqualButton{
        myCal?.operandA = result;
        myCal?.operandB = Int(operand);
        hasEqualButton = false
    }else{
    myCal!.operandB = Int(operand)
        result = myCal!.calcResult()
        self.messageLabel.text =
        String(result)
        myCal!.operandA = result
    }
    myCal!.op = op
    operand = 0
    digitcount = 0
}

}

