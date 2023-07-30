//
//  QuestionBrain.swift
//  Quzzler-Code
//
//  Created by Danila Bolshakov  on 29.07.2023.
//

import UIKit

struct QuestionBrain {
    
    let quiz = [
        Question(text: "Which is the largest organ in the human body?",
                 question: ["Heart", "Skin", "Large Intestine"],
                 correctAnswer: "Skin"),
        Question(text: "Five dollars is worth how many nickels?",
                 question: ["25", "50", "100"],
                 correctAnswer: "100"),
        Question(text: "What do the letters in the GMT time zone stand for?",
                 question: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"],
                 correctAnswer: "Greenwich Mean Time"),
        Question(text: "What is the French word for 'hat'?",
                 question: ["Chapeau", "Écharpe", "Bonnet"],
                 correctAnswer: "Chapeau"),
        Question(text: "In past times, what would a gentleman keep in his fob pocket?",
                 question: ["Notebook", "Handkerchief", "Watch"],
                 correctAnswer: "Watch"),
        Question(text: "How would one say goodbye in Spanish?",
                 question: ["Au Revoir", "Adiós", "Salir"],
                 correctAnswer: "Adiós"),
        Question(text: "Which of these colours is NOT featured in the logo for Google?",
                 question: ["Green", "Orange", "Blue"],
                 correctAnswer: "Orange"),
        Question(text: "What alcoholic drink is made from molasses?",
                 question: ["Rum", "Whisky", "Gin"],
                 correctAnswer: "Rum"),
        Question(text: "What type of animal was Harambe?",
                 question: ["Panda", "Gorilla", "Crocodile"],
                 correctAnswer: "Gorilla"),
        Question(text: "Where is Tasmania located?",
                 question: ["Indonesia", "Australia", "Scotland"],
                 correctAnswer: "Australia")
    ]
    
    private var questionNumber = 0
    private var score = 0
    
    var getQuestionText: String {
        return quiz[questionNumber].text
    }
    
    var progress: Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getAnswer() -> [String] {
        return quiz[questionNumber].question
    }
    
    func getRightAnswer() -> String {
        return quiz[questionNumber].correctAnswer
    }
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func nextQuestion() {
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            score = 0
            questionNumber = 0
        }
    }
}
