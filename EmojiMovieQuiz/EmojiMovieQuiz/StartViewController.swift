
//
//  StartViewController.swift
//  EmojiMovieQuiz
//
//  Created by King, Austin on 2/12/20.
//  Copyright © 2020 King, Austin. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var NumberQuestionsSelected: UILabel!
    @IBOutlet weak var QuestionStepper: UIStepper!
    @IBAction func StepQuestions(_ sender: Any) {
        
        NumberQuestionsSelected.text = String(Int(QuestionStepper.value))
    }
    @IBOutlet weak var CategoryControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // get a reference to the second view controller
        let playViewController = segue.destination as! FirstViewController

        // set a variable in the second view controller with the String to pass
        playViewController.questionCategory = CategoryControl.titleForSegment(at: CategoryControl.selectedSegmentIndex) ?? "Movie"
        playViewController.numberOfQuestions = Int(QuestionStepper.value)
    }

}
