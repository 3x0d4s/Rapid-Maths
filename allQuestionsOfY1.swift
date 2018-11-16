//
//  allQuestionsOfY1.swift
//  Rapid Maths
//
//  Created by User on 14/11/18.
//  Copyright © 2018 Tennyson Li. All rights reserved.
//

import Foundation
import UIKit

class QuestionBankY1 {
    
    var list = [Question]()
    
    init() {
        
        let itemL1 = Question(text: "9 + 0 = 90", correctAnswer: false)
        
        // Add the Question to the list of questions
        list.append(itemL1)
        
        list.append(Question(text: "2 + 5 = 7", correctAnswer: true))
        
        list.append(Question(text: "1 + 1 = 11", correctAnswer: false))
        
        list.append(Question(text: "2 + 5 = 7", correctAnswer: true))
        
        list.append(Question(text: "1 + 3 = 13", correctAnswer: false))
        
        list.append(Question(text: "0 + 9 = 9", correctAnswer: true))
        
        list.append(Question(text: "7 + 1 = 8", correctAnswer: true))
        
        list.append(Question(text: "2 - 1 = 1", correctAnswer: true))
        
        list.append(Question(text: "5 + 4 = 9", correctAnswer: true))
        
        list.append(Question(text: "1 + 9 = 10", correctAnswer: true))
        
        list.append(Question(text: "7 - 4 = 5", correctAnswer: false))
        
        list.append(Question(text: "0 + 1 = 2", correctAnswer: false))
        
        list.append(Question(text: "1 + 1 = 2", correctAnswer: true))
        
        list.append(Question(text: "1 + 9 = 10", correctAnswer: true))
        
        list.append(Question(text: "9 + 1 = 10", correctAnswer: true))
        
        list.append(Question(text: "8 - 1 = 7", correctAnswer: true))
        
        list.append(Question(text: "5 + 5 = 10", correctAnswer: true))
        
        list.append(Question(text: "2 + 9 = 11", correctAnswer: true))
        
        list.append(Question(text: "7 - 3 = 5", correctAnswer: false))
        
        list.append(Question(text: "0 + 2 = 1", correctAnswer: false))
        
        list.append(Question(text: "3 + 3 = 6", correctAnswer: true))
        
        list.append(Question(text: "2 + 1 = 5", correctAnswer: false))
        
        list.append(Question(text: "9 - 1 = 8", correctAnswer: true))
        
        list.append(Question(text: "5 + 5 = 10", correctAnswer: true))
        
        list.append(Question(text: "5 + 3 = 8", correctAnswer: true))
        
        list.append(Question(text: "8 - 3 = 5 ", correctAnswer: true))
        
        list.append(Question(text: "5 + 1 = 6", correctAnswer: true))
        
        list.append(Question(text: "2 + 5 = 7", correctAnswer: true))
        
        list.append(Question(text: "8 - 1 = 5", correctAnswer: false))
        
        list.append(Question(text: "0 + 3 = 5", correctAnswer: false))
        
        list.append(Question(text: "3 + 5 = 8", correctAnswer: true))
    }
}

