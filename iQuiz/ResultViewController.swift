//
//  ResultViewController.swift
//  iQuiz
//
//  Created by Eduardo Knop on 01/08/25.
//

import UIKit

class ResultViewController: UIViewController {

    var points: Int?
    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var percentageText: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        restartButton.layer.cornerRadius = 12
        
        if let points = points {
            let percentage = ceil(Double(points) / Double(questions.count) * 100.0)
            descriptionText.text = "You got \(points) out of \(questions.count) question right."
            percentageText.text = "Final percentage: \(Int(percentage))%"
        }
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
