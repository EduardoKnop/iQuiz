//
//  ViewController.swift
//  iQuiz
//
//  Created by Eduardo Knop on 31/07/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var buttonStart: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        buttonStart.layer.cornerRadius = 12.0
    }

    @IBAction func buttonStartPressed(_ sender: Any) {
        print("Button Start Pressed")
    }
    
}

