//
//  ViewController.swift
//  Assignment 5B
//
//  Created by Ilham Nurjadin on 7/3/16.
//  Copyright © 2016 IlhamNurjadin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        editTextField()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        print("Started editing!")
    }
    
    func editTextField() {
        textField.adjustsFontSizeToFitWidth = true
        textField.keyboardType = UIKeyboardType.EmailAddress
        textField.keyboardAppearance = UIKeyboardAppearance.Dark
        textField.returnKeyType = UIReturnKeyType.Go
        textField.clearButtonMode = UITextFieldViewMode.WhileEditing
        textField.becomeFirstResponder()
        
        // becomeFirstResponder() - system automatically shows keyboard and binds input into textfield
        // resignFirstResponder
    }

}

