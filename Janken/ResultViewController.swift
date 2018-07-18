//
//  ResultViewController.swift
//  Janken
//
//  Created by Munesada Yohei on 2018/07/18.
//  Copyright © 2018 Munesada Yohei. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var userHand: String!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    
    override func viewDidLoad() {
        self.title = "じゃんけん結果だよ！"
        
        // Comの手.
        let comHand = choiceComHand()
        comImageView.image = UIImage(named: "com-\(comHand)")
        
        // 結果.
        let result = judgeResult(userHand: userHand, comHand: comHand)
        resultLabel.text = result
    }
    
    func choiceComHand() -> String {
        let choices = ["gu", "choki", "pa"]
        let randomIndex = Int(arc4random_uniform(UInt32(choices.count)))
        return choices[randomIndex]
    }
    
    func judgeResult(userHand: String, comHand: String) -> String {
        
        if userHand == "gu" {
            if comHand == "gu" {
                return "あいこ"
            } else if comHand == "choki" {
                return "勝ち"
            } else if comHand == "pa" {
                return "負け"
            }
        } else if userHand == "choki" {
            if comHand == "gu" {
                return "負け"
            } else if comHand == "choki" {
                return "あいこ"
            } else if comHand == "pa" {
                return "勝ち"
            }
        } else if userHand == "pa" {
            if comHand == "gu" {
                return "勝ち"
            } else if comHand == "choki" {
                return "負け"
            } else if comHand == "pa" {
                return "あいこ"
            }
        }
        
        return ""
    }
    
}
