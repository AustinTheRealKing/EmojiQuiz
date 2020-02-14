//
//  FirstViewController.swift
//  EmojiMovieQuiz
//
//  Created by King, Austin on 2/9/20.
//  Copyright © 2020 King, Austin. All rights reserved.
//

import UIKit
import AVFoundation

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
    @IBOutlet weak var LivesVal: UILabel!
    @IBOutlet weak var ScoreVal: UILabel!
    
    var correctWord = ""
    var guess = ""
    var lives = 3
    var correct = false
    
    var guessPool : [String] = []
    var secretWord = ""
    
    var questionCategory = ""
    var numberOfQuestions = 1
    var questionArray: Array<QuestionOBJ> = Array()
    var currentQuestionIndex = 0
    var score = 0
    var questionIndex = 0
    var played: AVAudioPlayer?
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.setValue(0, forKey: "thirdpscore")
        UserDefaults.standard.setValue(0, forKey: "secpscore")
        UserDefaults.standard.setValue(0, forKey: "fpscore")
        UserDefaults.standard.setValue("p1", forKey: "thirdpname")
        UserDefaults.standard.setValue("p2", forKey: "secpname")
        UserDefaults.standard.setValue("p3", forKey: "fpname")
        LivesVal.text = String(lives)
        readQuestionsIntoArray(category: questionCategory)
        print(questionArray)
        populateScreen(question: questionArray[questionIndex])
        ScoreVal.text = String(score)
        
    }
    func makenoise(){
            if let path = Bundle.main.url(forResource: "example.mp3", withExtension: nil){
             
            do{
                let sound = AVAudioSession.sharedInstance()
                try! sound.setCategory(AVAudioSession.Category.playback, mode: AVAudioSession.Mode.default)
                played = try AVAudioPlayer(contentsOf: path)
                played?.play()
            } catch let error{
                print(error.localizedDescription)
            }
        
            } else {
                print("reee")
        }
        
    }
    func readQuestionsIntoArray(category: String){
        let filename: String?
          if questionCategory == "Movie"{
            filename = "movies.plist"
            } else {
             filename = "music.plist"
         }
        if let fn = filename, let path = Bundle.main.url(forResource: fn, withExtension: nil), let dict = NSDictionary(contentsOf: path) as? [String : String] {
                 for (key, value) in dict {
                    let question = QuestionOBJ(Question: value, Answer: key)
                questionArray.append(question)
            }

        questionArray.shuffle()
    }
    }
    
    func updateScreen() {
        makenoise()
        secretWord = String(correctWord.uppercased().map{
            if $0 == " " {
                return $0
            }
            if guessPool.contains(String($0)) {
                return $0
            }
            return "-"
        })
        if !guessPool.isEmpty{
            if !correctWord.uppercased().contains(String(guessPool.last!)){
            lives -= 1
            LivesVal.text = String(lives)
            }
        }
        if lives <= 0 {
            let ac = UIAlertController(title: "You failed", message: nil, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Back", style: .cancel, handler: nil))
            present(ac, animated: true)
        }
        CorrectLabel.text = secretWord
        print((secretWord, correctWord))
        if secretWord == correctWord.uppercased() {
            correct = true
            score += 1
            ScoreVal.text = String(score)
            questionIndex += 1
            if questionIndex < numberOfQuestions {
                resetVals()
                populateScreen(question: questionArray[questionIndex])
            } else {
              let ac = UIAlertController(title: "Enter answer", message: nil, preferredStyle: .alert)
               ac.addTextField()

               let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned ac] _ in
                let answer = ac.textFields![0]
                let sanswer = answer.text
                if self.score > UserDefaults.standard.integer(forKey: "fpscore"){
                   print("fuck")
                    UserDefaults.standard.setValue(UserDefaults.standard.integer(forKey: "secpscore"), forKey: "thirdpscore")
                     UserDefaults.standard.setValue(UserDefaults.standard.integer(forKey: "fpscore"), forKey: "secpscore")
                    UserDefaults.standard.setValue(self.score, forKey: "fpscore")
                    UserDefaults.standard.setValue(UserDefaults.standard.string(forKey: "secpname"), forKey: "thirdpname")
                     UserDefaults.standard.setValue(UserDefaults.standard.string(forKey: "fpname"), forKey: "secpname")
                    UserDefaults.standard.setValue(sanswer, forKey: "fpname")
                    print(UserDefaults.standard.string(forKey: "fpname")!)
                } else if self.score > UserDefaults.standard.integer(forKey: "secpscore") {
                    UserDefaults.standard.setValue(UserDefaults.standard.integer(forKey: "secpscore"), forKey: "thirdpscore")
                    UserDefaults.standard.setValue(self.score, forKey: "secpscore")
                    UserDefaults.standard.setValue(UserDefaults.standard.string(forKey: "secpname"), forKey: "thirdpname")
                    UserDefaults.standard.setValue(sanswer, forKey: "secpname")
                } else if self.score > UserDefaults.standard.integer(forKey: "secpscore"){
                UserDefaults.standard.setValue(self.score, forKey: "thirdpscore")
                UserDefaults.standard.setValue(sanswer, forKey: "thirdpname")
           
               }
            }
               ac.addAction(submitAction)

               present(ac, animated: true)
            }
        }
    }
    
    func resetVals() {
        guessPool = []
        //try to figure out a cleaner way of doing this
        QButton.isHidden = false
        WButton.isHidden = false
        EButton.isHidden = false
        RButton.isHidden = false
        TButton.isHidden = false
        YButton.isHidden = false
        UButton.isHidden = false
        IButton.isHidden = false
        OButton.isHidden = false
        PButton.isHidden = false
        AButton.isHidden = false
        SButton.isHidden = false
        DButton.isHidden = false
        FButton.isHidden = false
        GButton.isHidden = false
        HButton.isHidden = false
        JButton.isHidden = false
        KButton.isHidden = false
        LButton.isHidden = false
        ZButton.isHidden = false
        XButton.isHidden = false
        CButton.isHidden = false
        VButton.isHidden = false
        BButton.isHidden = false
        NButton.isHidden = false
        MButton.isHidden = false
    }
    
    func populateScreen(question: QuestionOBJ){
        correctWord = question.Question
        updateEmoji(question: question.Answer)
        updateScreen()
    }
    
    func updateEmoji(question: String){
        //https://byjeevan.blogspot.com/2019/01/animating-label-text-update-choosing.html
        let animation:CATransition = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name:
            CAMediaTimingFunctionName.easeInEaseOut)
        animation.type = CATransitionType.push //1.
        EmojiLabel.text = question
        animation.duration = 0.25
        EmojiLabel.layer.add(animation, forKey: CATransitionType.push.rawValue)
    }
}


