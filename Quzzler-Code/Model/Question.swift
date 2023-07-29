//
//  Question.swift
//  Quzzler-Code
//
//  Created by Danila Bolshakov on 29.07.2023.
//

import UIKit

struct Question {
    let text: String
    let question: [String]
    let correctAnswer: String
    
    init(text: String, question: [String], correctAnswer: String) {
        self.text = text
        self.question = question
        self.correctAnswer = correctAnswer
    }
}

