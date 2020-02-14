//
//  SecondViewController.swift
//  EmojiMovieQuiz
//
//  Created by King, Austin on 2/9/20.
//  Copyright © 2020 King, Austin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var fpn: UILabel!
    @IBOutlet weak var spn: UILabel!
    @IBOutlet weak var tpn: UILabel!
    @IBOutlet weak var fps: UILabel!
    @IBOutlet weak var sps: UILabel!
    @IBOutlet weak var tps: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        fpn.text = UserDefaults.standard.string(forKey: "fpname")!
        spn.text = UserDefaults.standard.string(forKey: "secpname")!
        tpn.text = UserDefaults.standard.string(forKey: "thirdpname")!
        fps.text = String(UserDefaults.standard.integer(forKey: "fpscore"))
        sps.text = String(UserDefaults.standard.integer(forKey: "secpscore"))
        tps.text = String(UserDefaults.standard.integer(forKey: "thirdpscore"))
    }
}

