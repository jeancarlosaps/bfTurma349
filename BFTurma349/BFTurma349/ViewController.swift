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
    @IBOutlet weak var result: UILabel!
    
    @IBAction func calculateBestFuel(_ sender: Any) {
        let gasolinaDouble = Double(gasolinaTextField.text!)
        let alcoolDouble = Double(alcoolTextField.text!)
        guard let gasolinaDouble = gasolinaDouble, let alcoolDouble = alcoolDouble else { return }
        let reference = (gasolinaDouble) * 0.7
        if reference < (alcoolDouble) {
            result.text = "Vale mais a pena abastecer com gasolina!"
        } else {
            result.text = "Vale mais a pena abastecer com álcool!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gasolinaTextField.delegate = self
        alcoolTextField.delegate = self
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 2
        gasolinaTextField.layer.borderColor = UIColor.blue.cgColor
        alcoolTextField.layer.borderColor = UIColor.blue.cgColor
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        textField.layer.borderWidth = 0
    }

    
}
