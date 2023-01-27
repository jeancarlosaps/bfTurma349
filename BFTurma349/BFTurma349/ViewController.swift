//
//  ViewController.swift
//  BFTurma349
//
//  Created by Jean Carlos on 23/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tappedButton: UIButton!
    @IBOutlet weak var textField: UITextField!

    @IBOutlet weak var gasolinaTextField: UITextField!
    @IBOutlet weak var alcoolTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpButton()
        setUpTextField()
    }
    
    func setUpButton() {
        tappedButton.titleLabel?.text = "Calcular"
        tappedButton.titleLabel?.textColor = .white
    }
    
    func setUpTextField() {
        textField.placeholder = "Digite os preços!"
        textField.textAlignment = .center
        let placeholderText = NSAttributedString(string: "Digite os preços!", attributes: [NSAttributedString.Key.foregroundColor:UIColor.white, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 23)])
        
        textField.attributedPlaceholder = placeholderText
        textField.keyboardType = .numberPad
        
        gasolinaTextField.delegate = self
        alcoolTextField.delegate = self
    }
    
    @IBAction func calculateDifferencePrice(_ sender: Any) {
        // TODO - Implementar
        if <#condition#> {
            <#statements#>
        } else {
            <#statements#>
        }
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
