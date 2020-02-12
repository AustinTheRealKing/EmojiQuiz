//
//  FirstViewController.swift
//  EmojiMovieQuiz
//
//  Created by King, Austin on 2/9/20.
//  Copyright © 2020 King, Austin. All rights reserved.
//

import UIKit

struct QuestionOBJ {
    var Question:String = ""
    var Answer:String = ""
    
}

class FirstViewController: UIViewController {
    
    @IBOutlet weak var QButton: UIButton!
    @IBOutlet weak var WButton: UIButton!
    @IBOutlet weak var EButton: UIButton!
    @IBOutlet weak var RButton: UIButton!
    @IBOutlet weak var TButton: UIButton!
    @IBOutlet weak var YButton: UIButton!
    @IBOutlet weak var UButton: UIButton!
    @IBOutlet weak var IButton: UIButton!
    @IBOutlet weak var OButton: UIButton!
    @IBOutlet weak var PButton: UIButton!
    @IBOutlet weak var AButton: UIButton!
    @IBOutlet weak var SButton: UIButton!
    @IBOutlet weak var DButton: UIButton!
    @IBOutlet weak var FButton: UIButton!
    @IBOutlet weak var GButton: UIButton!
    @IBOutlet weak var HButton: UIButton!
    @IBOutlet weak var JButton: UIButton!
    @IBOutlet weak var KButton: UIButton!
    @IBOutlet weak var LButton: UIButton!
    @IBOutlet weak var ZButton: UIButton!
    @IBOutlet weak var XButton: UIButton!
    @IBOutlet weak var CButton: UIButton!
    @IBOutlet weak var VButton: UIButton!
    @IBOutlet weak var BButton: UIButton!
    @IBOutlet weak var NButton: UIButton!
    @IBOutlet weak var MButton: UIButton!
    
    
    @IBOutlet weak var CorrectLabel: UILabel!
    @IBOutlet weak var EmojiLabel: UILabel!
    
    
    @IBAction func QClick(_ sender: Any) {
        QButton.isHidden = true
        guessPool.append("Q")
        updateScreen()
    }
    
    @IBAction func WClick(_ sender: Any) {
        WButton.isHidden = true
        guessPool.append("W")
        updateScreen()
    }
    @IBAction func EClick(_ sender: Any) {
        EButton.isHidden = true
        guessPool.append("E")
        updateScreen()
    }
    @IBAction func RClick(_ sender: Any) {
        RButton.isHidden = true
        guessPool.append("R")
        updateScreen()
    }
    @IBAction func TClick(_ sender: Any) {
        TButton.isHidden = true
        guessPool.append("T")
        updateScreen()
    }
    @IBAction func YClick(_ sender: Any) {
        YButton.isHidden = true
        guessPool.append("Y")
        updateScreen()
    }
    @IBAction func UClick(_ sender: Any) {
        UButton.isHidden = true
        guessPool.append("U")
        updateScreen()
    }
    @IBAction func IClick(_ sender: Any) {
        IButton.isHidden = true
        guessPool.append("I")
        updateScreen()
    }
    @IBAction func OClick(_ sender: Any) {
        OButton.isHidden = true
        guessPool.append("O")
        updateScreen()
    }
    @IBAction func PClick(_ sender: Any) {
        PButton.isHidden = true
        guessPool.append("P")
        updateScreen()
    }
    @IBAction func AClick(_ sender: Any) {
        AButton.isHidden = true
        guessPool.append("A")
        updateScreen()
    }
    @IBAction func SClick(_ sender: Any) {
        SButton.isHidden = true
        guessPool.append("S")
        updateScreen()
    }
    @IBAction func DClick(_ sender: Any) {
        DButton.isHidden = true
        guessPool.append("D")
        updateScreen()
    }
    @IBAction func FClick(_ sender: Any) {
        FButton.isHidden = true
        guessPool.append("F")
        updateScreen()
    }
    @IBAction func GClick(_ sender: Any) {
        GButton.isHidden = true
        guessPool.append("G")
        updateScreen()
    }
    @IBAction func HClick(_ sender: Any) {
        HButton.isHidden = true
        guessPool.append("H")
        updateScreen()
    }
    @IBAction func JClick(_ sender: Any) {
        JButton.isHidden = true
        guessPool.append("J")
        updateScreen()
    }
    @IBAction func KClick(_ sender: Any) {
        KButton.isHidden = true
        guessPool.append("K")
        updateScreen()
    }
    @IBAction func LClick(_ sender: Any) {
        LButton.isHidden = true
        guessPool.append("L")
        updateScreen()
    }
    @IBAction func ZClick(_ sender: Any) {
        ZButton.isHidden = true
        guessPool.append("Z")
        updateScreen()
    }
    @IBAction func XClick(_ sender: Any) {
        XButton.isHidden = true
        guessPool.append("X")
        updateScreen()
    }
    @IBAction func CClick(_ sender: Any) {
        CButton.isHidden = true
        guessPool.append("C")
        updateScreen()
    }
    @IBAction func VClick(_ sender: Any) {
        VButton.isHidden = true
        guessPool.append("V")
        updateScreen()
    }
    @IBAction func BClick(_ sender: Any) {
        BButton.isHidden = true
        guessPool.append("B")
        updateScreen()
    }
    @IBAction func NClick(_ sender: Any) {
        NButton.isHidden = true
        guessPool.append("N")
        updateScreen()
    }
    @IBAction func MClick(_ sender: Any) {
        MButton.isHidden = true
        guessPool.append("M")
        updateScreen()
    }
    var correctWord = ""
    var guess = ""
    var lives = 3
    
    var guessPool : [String] = []
    var secretWord = ""
    
    var questionCategory = ""
    var numberOfQuestions = 1
    var questionArray: Array<QuestionOBJ> = Array()
    override func viewDidLoad() {
        super.viewDidLoad()
        readQuestionsIntoArray(category: questionCategory)
        
        populateScreen(question: questionArray[0])
    }
    
    func readQuestionsIntoArray(category: String){
        let myDictionary:[String:String] = ["Question 1": " 1", "Question 2": " 2", "Question 3": " 3", "Question 4": " 4", "Question 5": " 5"]
        
        for key in myDictionary.keys {
            let tempQuestion = QuestionOBJ(Question: myDictionary[key]!, Answer: key)
            questionArray.append(tempQuestion)
        }
    }
    
    func updateScreen() {
        print(guessPool)
        secretWord = String(correctWord.map{
            if $0 == " " {
                return $0
            }
            if guessPool.contains(String($0)) {
                return $0
            }
            return "-"
        })
        CorrectLabel.text = secretWord
    }
    
    func populateScreen(question: QuestionOBJ){
        
        correctWord = question.Answer
        updateEmoji(question: correctWord)
        updateScreen()
    }
    
    func updateEmoji(question: String){
        let animation:CATransition = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name:
            CAMediaTimingFunctionName.easeInEaseOut)
        animation.type = CATransitionType.push //1.
        EmojiLabel.text = question
        animation.duration = 0.25
        EmojiLabel.layer.add(animation, forKey: CATransitionType.push.rawValue)
    }


}

