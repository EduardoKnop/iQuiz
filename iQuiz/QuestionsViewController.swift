//
//  QuestionsViewController.swift
//  iQuiz
//
//  Created by Eduardo Knop on 31/07/25.
//

import UIKit

class QuestionsViewController: UIViewController {

    private var points: Int = 0
    private var questionNumber = 0
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet var buttonsResponse: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        questionText.numberOfLines = 0
        questionText.textAlignment = .center
        for button in buttonsResponse {
            button.layer.cornerRadius = 12
        }
        
        showQuestion()
    }
    
    @objc private func showQuestion() {
        questionText.text = questions[questionNumber].title
        for button in buttonsResponse {
            button.isEnabled = true
            button.setTitle(questions[questionNumber].options[button.tag], for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1)
        }
    }
    
    @IBAction func anyButtonClicked(_ sender: UIButton) {
        for button in buttonsResponse {
            button.isEnabled = false
        }
        
        if sender.tag == questions[questionNumber].correctAnswer {
            points += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1)
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(showQuestion), userInfo: nil, repeats: false)
        } else {
            goToResultScreen()
        }
    }
    
    private func goToResultScreen() {
        performSegue(withIdentifier: "goToResultScreen", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultViewController = segue.destination as? ResultViewController {
            resultViewController.points = points
        }
    }

}
