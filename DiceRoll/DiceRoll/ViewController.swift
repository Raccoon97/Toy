//
//  ViewController.swift
//  DiceRoll
//
//  Created by 강태윤 on 2022/06/28.
//

import UIKit

class ViewController: UIViewController {
    
    // - 주사위 표시
    @IBOutlet weak var diceOne: UIImageView!
    @IBOutlet weak var diceTwo: UIImageView!
    
    // - 점수 표시
    @IBOutlet weak var resultOne: UILabel!
    @IBOutlet weak var resultTwo: UILabel!
    
    // 주사위 클래스 초기화
    let dice = Dice()
    

    
    // - View
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func rollBtnPressed(_ sender: UIButton) {
        
        // 주사위 굴리기 호출
        dice.rollDice(resultOne, diceOne)
        dice.rollDice(resultTwo, diceTwo)
        
    }
}

