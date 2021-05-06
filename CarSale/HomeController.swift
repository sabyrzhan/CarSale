//
//  HomeController.swift
//  CarSale
//
//  Created by Sabyrzhan Tynybayev on 06.05.2021.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var messagesButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        messagesButton.backgroundColor = .clear;
        messagesButton.layer.cornerRadius = messagesButton.bounds.width / 2;
        messagesButton.layer.borderWidth = 1
        messagesButton.layer.borderColor = UIColor.black.cgColor;
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
