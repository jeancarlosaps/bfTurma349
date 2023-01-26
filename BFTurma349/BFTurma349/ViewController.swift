//
//  ViewController.swift
//  BFTurma349
//
//  Created by Jean Carlos on 23/01/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var gasolinaTextField: UITextField!
    @IBOutlet weak var alcoolTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gasolinaTextField.delegate = self
        alcoolTextField.delegate = self
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 2
        gasolinaTextField.layer.borderColor = UIColor.red.cgColor
        alcoolTextField.layer.borderColor = UIColor.green.cgColor
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        textField.layer.borderWidth = 0
    }
    
}
