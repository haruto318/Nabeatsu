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
        var check: Bool = false
        if number % 3 == 0{
            check = true
        } else if number % 10 == 3{
            check = true
        } else if number / 10 % 10  == 3{
            check = true
        } else {
            var num: Int = number
            while(number != 0){
                if number % 10 == 3{
                    check = true
                } else {
                    num = num / 10
                }
            }
        }
        return check
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


}

