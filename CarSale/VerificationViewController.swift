//
//  VerificationViewController.swift
//  CarSale
//
//  Created by Sabyrzhan Tynybayev on 11.04.2021.
//

import UIKit

class VerificationViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var pin1: UITextField!
    @IBOutlet weak var pin2: UITextField!
    @IBOutlet weak var pin3: UITextField!
    @IBOutlet weak var pin4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pin1.delegate = self
        pin2.delegate = self
        pin3.delegate = self
        pin4.delegate = self
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let maxLength = 1
            let currentString: NSString = (textField.text ?? "") as NSString
            let newString: NSString =
                currentString.replacingCharacters(in: range, with: string) as NSString
            return newString.length <= maxLength
    }
}
