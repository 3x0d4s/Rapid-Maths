//
//  Question.swift
//  Rapid Maths
//
//  Created by User on 14/11/18.
//  Copyright © 2018 Tennyson Li. All rights reserved.
//

import Foundation

class Question {
    
    var questionText : String
    var answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}

