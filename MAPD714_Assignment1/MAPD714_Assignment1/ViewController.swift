//
//  ViewController.swift
//  MAPD714_Group9_Assignment3
//
//  Created by fathila on 2021-10-22.
//
/*
 Author     : Fathima Fathila
 Student Id : 301222885
 Date       : oct 22 2021s
 
 Author     : Ashish mUsani
 Student Id : 301165851
 Date       : oct 22 2021s

 */
import UIKit
var operand1 : String = ""
var operand2 : String = ""
var operand3 : String = ""
var currentOperator : String = ""
	
class ViewController: UIViewController {
//outlets for portrait and landscape mode
    @IBOutlet weak var ResultsLabel: UILabel!
    @IBOutlet weak var ResultArea: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        ResultsLabel.text = "0"
        ResultArea.text = "0"
        
    }
// on sin,cos,tan,x2,sqrt,pi pressed
    @IBAction func OnMathOperatorsPressed(_ sender: UIButton) {
        var button_text = sender.titleLabel!.text!
        var value : Double = 0
        
    if(operand1 != "")
    {
        if (button_text == "x2") // pow
        {
            value = (operand1 as NSString).doubleValue
            ResultArea.text = String(value*value)
        }
        if (button_text == "sqr")// square root
        {
            value = sqrt((operand1 as NSString).doubleValue)
            ResultArea.text = String(value)
        }
        if (button_text == "sin")// sin
        {
            value = sin((operand1 as NSString).doubleValue)
        ResultArea.text = String(value)
        }
        if (button_text == "cos") // cos
        {
            value = cos((operand1 as NSString).doubleValue)
        ResultArea.text = String(value)
        }
        if (button_text == "tan")// tan
        {
            value = tan((operand1 as NSString).doubleValue)
        ResultArea.text = String(value)
        }
        if (button_text == "log")// log
        {
            value = log((operand1 as NSString).doubleValue)
        ResultArea.text = String(value)
        }
    }}
    @IBAction func OnSpecialButtonPressed(_ sender: UIButton) {
        // Clear Button
        
        if sender.tag == 11 {
            ResultsLabel.text = " "
            ResultArea.text = " "
            operand1 = ""
            operand2 = ""
            currentOperator = ""
            return
        }
        
        //delete button
        if (sender.tag == 12)
        {
            if(operand2 != ""){
                let val = operand2
                operand2 = String(val.prefix(upTo: val.index(before: val.endIndex)))
            } else {
                if(currentOperator != ""){
                    currentOperator = ""
                } else{
                    if(operand1 != ""){
                        let val = operand1
                        operand1 = String(val.prefix(upTo: val.index(before: val.endIndex)))
                    }
                }
            }
            
            ResultsLabel.text = operand1 + currentOperator + operand2
            ResultArea.text = operand1 + currentOperator + operand2
        }
        
    }
    
    @IBAction func OnOperandButtonPressed(_ sender: UIButton) {
        var button_text = sender.titleLabel!.text!
        switch(button_text){
            case "=":
            if(operand1 != "" && operand2 != "" && currentOperator != ""){
                switch(currentOperator){
                case "+":// add
                    ResultsLabel.text = ((operand1 as NSString).floatValue + (operand2 as NSString).floatValue).description
                    ResultArea.text = ((operand1 as NSString).floatValue + (operand2 as NSString).floatValue).description
                case "-":// subtract
                    ResultsLabel.text = ((operand1 as NSString).floatValue - (operand2 as NSString).floatValue).description
                    ResultArea.text = ((operand1 as NSString).floatValue - (operand2 as NSString).floatValue).description
                case "x":// multiply
                    ResultsLabel.text = ((operand1 as NSString).floatValue * (operand2 as NSString).floatValue).description
                    ResultArea.text = ((operand1 as NSString).floatValue * (operand2 as NSString).floatValue).description
                case "/":// divide
                    ResultsLabel.text = ((operand1 as NSString).floatValue / (operand2 as NSString).floatValue).description
                    ResultArea.text = ((operand1 as NSString).floatValue / (operand2 as NSString).floatValue).description
                case "mod":// mod
                    ResultsLabel.text = ((operand1 as NSString).floatValue).truncatingRemainder(dividingBy: ((operand2 as NSString).floatValue)).description
                    ResultArea.text = ((operand1 as NSString).floatValue).truncatingRemainder(dividingBy: ((operand2 as NSString).floatValue)).description
                default:
                    ResultsLabel.text = ResultsLabel.text
                    ResultArea.text = ResultArea.text

                }
                operand1 = ResultsLabel.text!
                operand2 = ""

            }
            default: // +, -, x, /
            if(currentOperator == "" && operand1 != ""){
                currentOperator = button_text
                ResultsLabel.text = operand1 + currentOperator
            }
                if button_text == "/" { //Divide

                    ResultsLabel.text = operand1 + "/";
                    ResultArea.text = operand1 + "/";
                }

                if button_text == "x" { //Multiply
                    ResultsLabel.text = operand1 + "x";
                    ResultArea.text = operand1 + "x";
                }

                if button_text == "-" { //Subtract

                    ResultsLabel.text = operand1 + "-";
                    ResultArea.text = operand1 + "-";
                }

                if button_text == "+" { //Add
                    ResultsLabel.text = operand1 + "+";
                    ResultArea.text = operand1 + "+";
                }

                currentOperator = button_text
        }
    }
    // On Numbers pressed.
    @IBAction func OnNumberButtonPressed(_ sender: UIButton) {
        var button_text = sender.titleLabel!.text!
        if(currentOperator == ""){
            switch(button_text){
                case ".":
                    if(!operand1.contains(".")){
                        operand1.append(button_text)
                    }
                case "0":
                    if(!(operand1 == "0")){
                        operand1.append(button_text)
                    }
                default:
                    operand1.append(button_text)
            }
        } else {
            switch(button_text){
                case ".":
                    if(!operand2.contains(".")){
                        operand2.append(button_text)
                    }
                case "0":
                    if(!(operand2 == "0")){
                        operand2.append(button_text)
                    }
                default:
                    operand2.append(button_text)
            }
        }
        ResultsLabel.text = operand1 + currentOperator + operand2
        ResultArea.text = operand1 + currentOperator + operand2

    }
}

