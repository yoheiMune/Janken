//
//  ViewController.swift
//  Janken
//
//  Created by Munesada Yohei on 2018/07/09.
//  Copyright © 2018年 Munesada Yohei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "さあ、じゃんけんを楽しもう！"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTapGu() {
        print("gu")
        self.performSegue(withIdentifier: "result", sender: "gu")
    }

    @IBAction func onTapChoki() {
        print("choki")
        self.performSegue(withIdentifier: "result", sender: "choki")
    }

    @IBAction func onTapPa() {
        print("pa")
        self.performSegue(withIdentifier: "result", sender: "pa")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "result" {
            if let vc = segue.destination as? ResultViewController {
                if let hand = sender as? String {
                    vc.userHand = hand
                }
            }
        }
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

