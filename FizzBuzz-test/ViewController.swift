//
//  ViewController.swift
//  FizzBuzz-test
//
//  Created by takayuki abe on 2015/05/27.
//  Copyright (c) 2015年 takayuki abe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var incrementButton: UIButton!
    
    var number:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCurrentNumber(number)
    }
    @IBAction func didTapIncrementButton(sender: UIButton) {
        number++
        setCurrentNumber(number)
    }
    
    func setCurrentNumber(currentNumber: Int) -> Void {
        if currentNumber == 0 {
            numberLabel.text = String(currentNumber)
        }else if currentNumber % 5 == 0 && currentNumber % 3 == 0 {
            numberLabel.text = "FizzBuzz"
        }else if currentNumber % 3 == 0 {
            numberLabel.text = "Fizz"
        }else if currentNumber % 5 == 0 {
            numberLabel.text = "Buzz"
        }else {
            numberLabel.text = String(currentNumber)
        }
    }

}

