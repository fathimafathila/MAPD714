/*
 FileName: ViewController.swift
 ProjectName: MAPD714_Group9_Assignment1
 Date: 26 Sept, 2021
 App Description: This is a basic calculator app for iOS mobile devices.

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

    @IBOutlet var ResultArea: UIView!
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


}

