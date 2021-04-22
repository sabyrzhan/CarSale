//
//  ViewController.swift
//  CarSale
//
//  Created by Sabyrzhan Tynybayev on 10.04.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let yourBackImage = UIImage(named: "back-button")
        self.navigationController?.navigationBar.backIndicatorImage = yourBackImage
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = yourBackImage
        self.navigationController?.navigationBar.backItem?.title = "Custom"
    }

    @IBAction func continueButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "showVerificationSegue", sender: self)
    }
    
}

