//
//  Question.swift
//  iQuiz
//
//  Created by Eduardo Knop on 01/08/25.
//

struct Question {
    var title: String
    var options: [String]
    var correctAnswer: Int
}

let questions: [Question] = [
    Question(
        title: "What city is the capital of Brazil?",
        options: ["São Paulo", "Brasília", "Rio de Janeiro"],
        correctAnswer: 1
    ),
    Question(
        title: "Which country has the largest land area?",
        options: ["Canada", "Russia", "China"],
        correctAnswer: 1
    ),

    Question(
        title: "What is the longest river in the world?",
        options: ["Amazon", "Nile", "Yangtze"],
        correctAnswer: 1
    ),
    Question(
        title: "Which desert is the largest in the world by area?",
        options: ["Sahara", "Antarctic Desert", "Gobi"],
        correctAnswer: 1
    ),
    Question(
        title: "What is the capital of Australia?",
        options: ["Sydney", "Melbourne", "Canberra"],
        correctAnswer: 2
    ),
    Question(
        title: "Which country has the most time zones?",
        options: ["USA", "France", "Russia"],
        correctAnswer: 1
    ),
    Question(
        title: "Mount Everest is located on the border of which two countries?",
        options: ["India and Nepal", "China and Nepal", "Bhutan and Nepal"],
        correctAnswer: 1
    ),
    Question(
        title: "Which continent has the most countries?",
        options: ["Africa", "Asia", "Europe"],
        correctAnswer: 0
    ),
    Question(
        title: "What ocean lies on the east coast of the United States?",
        options: ["Pacific", "Arctic", "Atlantic"],
        correctAnswer: 2
    ),
    Question(
        title: "Which country does Greenland belong to?",
        options: ["Canada", "Norway", "Denmark"],
        correctAnswer: 2
    ),
    Question(
        title: "What is the smallest country in the world?",
        options: ["Monaco", "Nauru", "Vatican City"],
        correctAnswer: 2
    )
]
