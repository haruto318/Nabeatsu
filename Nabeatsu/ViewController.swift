//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Bool {
        if number % 3 == 0{
            return true
        }
//        if number % 10 == 3{
//            return true
//        }
//        if number / 10 % 10  == 3{
//            return true
//        }
        var num: Int = number
        while num != 0 {
            if num % 10 == 3{
                return true
            } else {
                num = num / 10
            }
        }
        
//        一の位と十の位の数字が同じとき
        if number % 10  == number / 10 % 10  {
            return true
        }

        return false
    }
    
    
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        
        if isAho() == true {
            
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            
            faceLabel.text = "(゜o゜)"
        }
    }
    
    @IBAction func clearButton(){
        number = 0
        countLabel.text = String(number)
    }
}
