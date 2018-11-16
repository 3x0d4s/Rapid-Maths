//
//  ViewController.swift
//  Rapid Maths
//
//  Created by User on 14/11/18.
//  Copyright © 2018 Tennyson Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var PickedYearLevel = [0, 1, 2, 3, 4, 5]
    var pickedNum : Int = 0
    var allListsYL = [0, 1, 2, 3, 4, 5]
    var pickedList : Int = 0
    var AllQuestionBanks = [QuestionBankY1(), QuestionBankY2()] as [Any]
//    var allListsOfQB = [QuestionBankY1().listY1, QuestionBankY2().listY2] as [Any]
//    var list = QuestionBankY1().listY1
    var questionBank = QuestionBanks(Y1: (Any).self, Y2: (Any).self)
    var UserPickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var SeeResults: UIBarButtonItem!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBAction func Year1(_ sender: Any) {
//        pickedNum = PickedYearLevel[0]
        AllQuestionBanks = [AllQuestionBanks[pickedNum]]
        pickedList = PickedYearLevel[1]
//        allListsOfQB = [allListsOfQB[pickedNum]]
    }

    @IBAction func Year2(_ sender: Any) {
        print("hi")
        questionBank = AllQuestionBanks[pickedNum] as! QuestionBanks
//        list = allListsOfQB[pickedNum] as! [Question]
        pickedNum = PickedYearLevel[1]
        AllQuestionBanks = [AllQuestionBanks[pickedNum]]
//        pickedList = allListsYL[1]
//        allListsYL = [allListsYL[pickedList]]
    }

    @IBAction func Year3(_ sender: Any) {
    }

    @IBAction func Year4(_ sender: Any) {

    }

    @IBAction func Year5(_ sender: Any) {

    }

    @IBAction func Year6(_ sender: Any) {

    }


    @IBAction func StartButtonPressed(_ sender: Any) {
        questionLabel.text = questionBank.list[questionNumber].questionText
        trueButton.isHidden = false
        falseButton.isHidden = false
        questionLabel.isHidden = false
        startButton.isHidden = true
        print("hi")
    }
    
    
    
    @IBAction func TrueButtonPressed(_ sender: Any) {
        questionLabel.text = questionBank.list[questionNumber].questionText
        scoreLabel.text = "Score: " + String(score)
        
        if questionNumber <= 29 {
            questionNumber = questionNumber + 1
            checkAnswer()
        } else {
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            
            let resultsAction = UIAlertAction(title: "See Results", style: .default, handler: { UIAlertAction in
                self.EnableSeeResult()
            })
            
            alert.addAction(resultsAction)
            
            present(alert, animated: false, completion: nil)
        }
    }
    
    @IBAction func FalsePressed(_ sender: Any) {
        questionLabel.text = questionBank.list[questionNumber].questionText
        
        if questionNumber <= 29 {
            questionNumber = questionNumber + 1
            checkAnswer()
        } else {
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            
            let resultsAction = UIAlertAction(title: "See Results", style: .default, handler: { UIAlertAction in
                self.EnableSeeResult()
            })
            
            alert.addAction(resultsAction)
            
            present(alert, animated: false, completion: nil)
        }
    }
    
    //    func setTimer() {
    //        if var timer = Timer(withTimeInterval: 5, repeats: false) { (Timer)(); do {
    //            print("Time's Up!")
    //            }}
    //
    //
    //    }
    
    func EnableSeeResult() {
        SeeResults.isEnabled = true
        falseButton.isEnabled = false
        trueButton.isEnabled = false
    }
    
    func checkAnswer() {
        let correctAnswer = questionBank.list[questionNumber].answer
        
        if correctAnswer == UserPickedAnswer {
            print("Correct!")
        } else {
            print("Wrong!")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionBank = AllQuestionBanks[1] as! QuestionBankY2
        trueButton.isHidden = true
        falseButton.isHidden = true
        SeeResults.isEnabled = false
    }


}

