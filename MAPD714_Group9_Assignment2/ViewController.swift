/*
 FileName: ViewController.swift
 ProjectName: MAPD714_Group9_Assignment2
 Date: 26 Sept, 2021
 App Description: This is a basic calculator app for iOS mobile devices. It can perform operations like addition, subtraction, multiplication and division

 Author 1
 --------
 Name: Ashish Musani
 Student ID: 301165851

 Author 2
 --------
 Name: Fathima Fathila
 Student ID: 301222885

*/

import UIKit

class ViewController: UIViewController {

    var operand1 : String = ""
    var operand2 : String = ""
    var currentOperator : String = ""
    
    @IBOutlet weak var ResultArea: UILabel!
    @IBOutlet weak var ClearButton: UIButton!
    @IBOutlet var BackButton: UIView!
    @IBOutlet weak var SignChangeButton: UIButton!
    @IBOutlet weak var DecimalButton: UIButton!
    @IBOutlet weak var DivideButton: UIButton!
    @IBOutlet weak var MultiplyButton: UIButton!
    @IBOutlet weak var MinusButton: UIButton!
    @IBOutlet weak var PlusButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

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
        ResultArea.text = operand1 + currentOperator + operand2
    }

    @IBAction func OnOperatorButtonsPressed(_ sender: UIButton) {
        var button_text = sender.titleLabel!.text!
        switch(button_text){
            case "=":
            if(operand1 != "" && operand2 != "" && currentOperator != ""){
                switch(currentOperator){
                case "+":
                    ResultArea.text = ((operand1 as NSString).floatValue + (operand2 as NSString).floatValue).description
                case "-":
                    ResultArea.text = ((operand1 as NSString).floatValue - (operand2 as NSString).floatValue).description
                case "x":
                    ResultArea.text = ((operand1 as NSString).floatValue * (operand2 as NSString).floatValue).description
                case "/":
                    ResultArea.text = ((operand1 as NSString).floatValue / (operand2 as NSString).floatValue).description
                default:
                    ResultArea.text = ResultArea.text
                }
            }
            default: // +, -, x, /
            if(currentOperator == "" && operand1 != ""){
                currentOperator = button_text
                ResultArea.text = operand1 + currentOperator
            }
        }
    }


    @IBAction func OnSpecialButtonPressed(_ sender: UIButton) {
    }
}

