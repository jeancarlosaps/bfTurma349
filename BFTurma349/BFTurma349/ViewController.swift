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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
        
        
    }
}
