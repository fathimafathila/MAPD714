//
/*
File Name: Fathima_MAPD714_Midterm
Author Name: Fathima Fathila M
Student id: 301222885
Date: 29-11-2021
*/
//

import UIKit
//Main Viewcontroller to display first ui page
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
/// actions to perform on pressing "start shopping" button
    @IBAction func onButtonPressed(_ sender: UIButton) {
        let vc=storyboard?.instantiateViewController(identifier: "second") as! SecondViewController
        navigationController?.pushViewController(vc,animated: true)
    }
}
// class for second view controller
class SecondViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
   
    @IBOutlet weak var item5: UITextField!
    @IBOutlet weak var item6: UITextField!
    @IBOutlet weak var item4: UITextField!
    @IBOutlet weak var item2: UITextField!
    @IBOutlet weak var item3: UITextField!
    @IBOutlet weak var item1: UITextField!
    @IBOutlet weak var picker6: UIPickerView!
    @IBOutlet weak var picker5: UIPickerView!
    @IBOutlet weak var picker4: UIPickerView!
    @IBOutlet weak var picker3: UIPickerView!
    @IBOutlet weak var picker2: UIPickerView!
    @IBOutlet weak var shopName: UITextField!
    @IBOutlet weak var singlePicker: UIPickerView!
    var values:[String]=[String]()
    
    // actions to perform on cancel button pressed for resetting value to default
    @IBAction func onCancelButtonPressed(_ sender: UIButton) {
        shopName.text = "My shopping List"
        item2.text=""
        item1.text=""
        item3.text=""
        item4.text=""
        item5.text = ""
        item6.text=""
        singlePicker.selectRow(0, inComponent:0, animated: true)
        picker3.selectRow(0, inComponent:0, animated: true)
        picker2.selectRow(0, inComponent:0, animated: true)
        picker4.selectRow(0, inComponent:0, animated: true)
        picker5.selectRow(0, inComponent:0, animated: true)
        picker6.selectRow(0, inComponent:0, animated: true)

    }
    // on pressing save button shows a pop up message
     @IBAction func onButtonPressed(_ sender: UIButton) {
                
                let alert = UIAlertController(
                    title: "Shop list Created",
                    message: "Thank you for shopping",
                    preferredStyle: .alert)
                let action = UIAlertAction(
                    title: "You're welcome",
                    style: .default,
                    handler: nil)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Create Shopping Kart"
        self.singlePicker.delegate=self
        self.singlePicker.dataSource=self
        self.picker2.delegate=self
        self.picker2.dataSource=self
        self.picker3.delegate=self
        self.picker3.dataSource=self
        self.picker4.delegate=self
        self.picker4.dataSource=self
        self.picker5.delegate=self
        self.picker5.dataSource=self
        self.picker6.delegate=self
        self.picker6.dataSource=self
        values = ["0","1","2","3","4","5","6","7","8","9","10"]

        
    }
    // picker view to select the quantity of items in shop list
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView,
                        numberOfRowsInComponent component: Int) -> Int {
            return values.count
        }
        
        // Picker Delegate Methods
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return values[row]
        }

}

