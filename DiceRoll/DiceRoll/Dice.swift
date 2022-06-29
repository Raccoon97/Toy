//
//  Dice.swift
//  DiceRoll
//
//  Created by 강태윤 on 2022/06/29.
//

import Foundation
import UIKit

class Dice {
    
    // 주사위 1 ~ 6 배열
    public let diceArray: [UIImage] = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
    // Xcode 13 이후 이미지 리터럴 사용법 -> #imageLiteral()
    
    
    // 주사위 굴리기
    // diceArray 에서 그림을 랜덤하게 가져온다.
    // 가져온 그림을 바탕으로 diceArray 에서의 인덱스를 찾아낸 뒤 result Label 을 변경한다.
    // 가져온 그림을 사용해서 dice 이미지를 변경한다.
    func rollDice(_ result: UILabel, _ dice: UIImageView) {
        if let setDice = diceArray.randomElement() {
            
            if let setText = diceArray.firstIndex(of: setDice) {
                result.text = String(setText + 1)
            }
            dice.image = setDice
        }
    }
    
    
}
