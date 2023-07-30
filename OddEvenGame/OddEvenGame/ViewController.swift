//
//  ViewController.swift
//  OddEvenGame
//
//  Created by 황민채 on 2023/07/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var computerBallCountLbl: UILabel!
    @IBOutlet weak var userBallCountLbl: UILabel!
    
    var comBallCount: Int = 20
    var userBallCount : Int = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        computerBallCountLbl.text = String(comBallCount)
        userBallCountLbl.text = String(userBallCount)
    }
    @IBAction func gameStartPressed(_ sender: Any) {
        print("게임시작!!")

    }
    

}

