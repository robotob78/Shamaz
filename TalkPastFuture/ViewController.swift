//
//  ViewController.swift
//  TalkPastFuture
//
//  Created by Tobiasz Gruca on 31.07.2018.
//  Copyright © 2018 Tobiasz Gruca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var pastButton: UIButton!
    @IBOutlet var futureButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = "Choose Past or Future :)"
    }
    
    var pastquestions: [String] = [
        "What did you do",
        "How was your best time",
        "What was happened to you"
    ]
    var futurequestions: [String] = [
        "What are you gonna do in next",
        "What is your plan for next",
        "What will you do in next"
    ]
    var timewords: [String] = [
        "hour", "day", "week", "month", "year"
    ]
    
    func getRandom(_ maxRandomNumber: Int) -> Int {
        return Int(arc4random_uniform(UInt32(maxRandomNumber)))
    }
    func showNextQuestion(_ nextQuestion: String, ago: Bool) {
        let timeCounter: Int = getRandom(5)+1
        let timeWord: String = timewords[getRandom(timewords.count)]
        questionLabel.text = nextQuestion + " \(timeCounter) " + timeWord
        if timeCounter > 1 {questionLabel.text! += "s"}
        if ago == true {questionLabel.text! += " ago?"}
        else {questionLabel.text! += "?"}
        nextButton.isHidden = false
        pastButton.isHidden = true
        futureButton.isHidden = true
        
    }
    
    @IBAction func showPastQuestion(_ sender: UIButton) {

        let question: String = pastquestions[getRandom(pastquestions.count)]
        showNextQuestion(question, ago:true)
        
    }
    
    @IBAction func showFutureQuestion(_ sender: UIButton) {
        
        let question: String = futurequestions[getRandom(futurequestions.count)]
        showNextQuestion(question, ago:false)
        
    }
    
    @IBAction func rewindToStart(_ sender: UIButton) {
        let n: Int = getRandom(10)+1
        questionLabel.text = "Give this iPhone to the other person number \(n)"
        nextButton.isHidden = true
        pastButton.isHidden = false
        futureButton.isHidden = false
    }
}

