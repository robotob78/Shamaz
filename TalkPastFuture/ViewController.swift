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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = "Here will appear Past or Future question :)"
    }
    
    let pastquestions: [String] = [
    "What did you do yesterday?",
    "How was your day a week ago?",
    "Describe what did you do a year ago?"
    ]
    let futurequestions: [String] = [
    "What are you gonna do tommorow?",
    "What is your plan for 10 days from now?",
    "Imagine and tell what you will do in next 10 years?"
    ]
    var currentQuestionIndex: Int = 0
    
    @IBAction func showPastQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == pastquestions.count {
            currentQuestionIndex = 0
        }
        let questionP: String = pastquestions[currentQuestionIndex]
        questionLabel.text = questionP
    }
    @IBAction func showFutureQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == futurequestions.count {
            currentQuestionIndex = 0
        }
        let questionF: String = futurequestions[currentQuestionIndex]
        questionLabel.text = questionF
        nextButton.isHidden = false
    }
    @IBAction func rewindToStart(_ sender: UIButton) {
        questionLabel.text = "Give this iPhone to the other person :)"
    }
}

