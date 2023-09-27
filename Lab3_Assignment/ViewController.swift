//
//  ViewController.swift
//  Lab3_Assignment
//
//  Created by user232336 on 9/23/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTxtBox: UITextField!
    @IBOutlet weak var lastNameTxtBox: UITextField!
    @IBOutlet weak var countryTxtBox: UITextField!
    @IBOutlet weak var ageTxtBox: UITextField!
    
    @IBOutlet weak var hdnLabel: UILabel!
    @IBOutlet weak var viewTextField: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hdnLabel.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonToViewDetails(_ sender: Any) {
        let fName = firstNameTxtBox.text!
        let lName = lastNameTxtBox.text!
        let cntry = countryTxtBox.text!
        let age = ageTxtBox.text!
        
        viewTextField.text = "Full Name:\(fName) \(lName) \n Country: \(cntry) \n Age : \(age)"
    }
    

    @IBAction func submitBtn(_ sender: Any) {
        if firstNameTxtBox.text!.isEmpty || lastNameTxtBox.text!.isEmpty || countryTxtBox.text!.isEmpty || ageTxtBox.text!.isEmpty {
            hdnLabel.isHidden = false
            hdnLabel.textColor = UIColor.red
            hdnLabel.text="Complete the missing info..!!"
        }
        else{
            hdnLabel.isHidden = false
            hdnLabel.textColor = UIColor.green
            hdnLabel.text="Successfully Submited...!"
        }
    }
    
    @IBAction func clearTextFields(_ sender: Any) {
        firstNameTxtBox.text = ""
        lastNameTxtBox.text = ""
        countryTxtBox.text = ""
        ageTxtBox.text = ""
        viewTextField.text = ""
        
        hdnLabel.isHidden = true
    }
}

