//
//  ViewController.swift
//  Calc
//
//  Created by ききょ on 2019/01/30.
//  Copyright © 2019 kikyo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    var input_num:String = "0"
    var intermediate_calculation_result:Int = 0
    var calc_operand:String = "+"
    var pushed_operator: Bool = true
    var calc_evacuate:Int = 0
    var first_input:Bool = true
    var input_log = ""
    var confirm_num = 0
    var log_num_evacuate:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func zeroButton(_ sender: Any) {
        
        if (pushed_operator) {
            input_num = "0"
            //演算子が入力されていなければ数字の入力は続いている
        } else {
            input_num = input_num + "0"
        }
        
        numericButtonPressedCommonProcessing()
    }
    
    @IBAction func firstButton(_ sender: Any) {
        
        if (pushed_operator) {
            input_num = "1"
            //演算子が入力されていなければ数字の入力は続いている
        } else {
            input_num = input_num + "1"
        }
        
        numericButtonPressedCommonProcessing()
    }
    
    @IBAction func secondButton(_ sender: Any) {
        
        if (pushed_operator) {
            input_num = "2"
            //演算子が入力されていなければ数字の入力は続いている
        } else {
            input_num = input_num + "2"
        }
        
        numericButtonPressedCommonProcessing()
    }
    
    
    @IBAction func thirdButton(_ sender: Any) {
        
        if (pushed_operator) {
            input_num = "3"
            //演算子が入力されていなければ数字の入力は続いている
        } else {
            input_num = input_num + "3"
        }
        
        numericButtonPressedCommonProcessing()
    }
    
    @IBAction func fourthButton(_ sender: Any) {
        
        if (pushed_operator) {
            input_num = "4"
            //演算子が入力されていなければ数字の入力は続いている
        } else {
            input_num = input_num + "4"
        }
        
        numericButtonPressedCommonProcessing()
    }
    
    @IBAction func fifthButton(_ sender: Any) {
        
        if (pushed_operator) {
            input_num = "5"
            //演算子が入力されていなければ数字の入力は続いている
        } else {
            input_num = input_num + "5"
        }
        
        numericButtonPressedCommonProcessing()
    }
    
    
    @IBAction func sixthButton(_ sender: Any) {
        
        if (pushed_operator) {
            input_num = "6"
            //演算子が入力されていなければ数字の入力は続いている
        } else {
            input_num = input_num + "6"
        }
        
        numericButtonPressedCommonProcessing()
    }
    
    
    @IBAction func seventhButton(_ sender: Any) {
        
        if (pushed_operator) {
            input_num = "7"
            //演算子が入力されていなければ数字の入力は続いている
        } else {
            input_num = input_num + "7"
        }
        
        numericButtonPressedCommonProcessing()
    }
    
    
    @IBAction func eighthButton(_ sender: Any) {
        
        if (pushed_operator) {
            input_num = "8"
            //演算子が入力されていなければ数字の入力は続いている
        } else {
            input_num = input_num + "8"
        }
        
        numericButtonPressedCommonProcessing()
    }
    
    @IBAction func ninethButton(_ sender: Any) {
        
        if (pushed_operator) {
            input_num = "9"
            //演算子が入力されていなければ数字の入力は続いている
        } else {
            input_num = input_num + "9"
        }
        
        numericButtonPressedCommonProcessing()
    }
    
    
    @IBAction func plusButton(_ sender: Any) {
        
        calc_operand = "+"
        input_log = input_log + "+"
        logLabel.text = input_log
        operatorButtonPressedCommonProcessing()

    }
    
    
    @IBAction func minusButton(_ sender: Any) {
        
      
        calc_operand = "-"
        input_log = input_log + "-"
        logLabel.text = input_log
        operatorButtonPressedCommonProcessing()

    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        
        calc_operand = "*"
        input_log = input_log + "*"
        logLabel.text = input_log
        operatorButtonPressedCommonProcessing()

    }
    
    
    @IBAction func divisionButton(_ sender: Any) {
        
        calc_operand = "/"
        input_log = input_log + "/"
        logLabel.text = input_log
        operatorButtonPressedCommonProcessing()

    }
    
    @IBAction func clearButton(_ sender: Any) {
        
        intermediate_calculation_result = 0
        calc_evacuate = 0
        input_log = ""
        input_num = "0"
        pushed_operator = true
        logLabel.text = input_log
        resultLabel.text = String(intermediate_calculation_result)
        
    }
    
    func calc() {
        
        
        switch calc_operand  {
        case "+":
            
            if (input_num.count == 1) {
                //退避をとっておく
                calc_evacuate = intermediate_calculation_result
                log_num_evacuate = input_log
                
                intermediate_calculation_result = intermediate_calculation_result + Int(input_num)!
                input_log = input_log + input_num
                
            } else {
                intermediate_calculation_result = calc_evacuate + Int(input_num)!
                input_log = log_num_evacuate + input_num
            }
            break;
        case "-":
            
            if (input_num.count == 1) {
                calc_evacuate = intermediate_calculation_result
                intermediate_calculation_result = intermediate_calculation_result - Int(input_num)!
            } else {
                intermediate_calculation_result = calc_evacuate - Int(input_num)!
            }
            break;
        case "*":
            
            if (input_num.count == 1) {
                calc_evacuate = intermediate_calculation_result
                intermediate_calculation_result = intermediate_calculation_result * Int(input_num)!
            } else {
                intermediate_calculation_result = calc_evacuate * Int(input_num)!
            }
            break;
        case "/":
            
            if (input_num.count == 1) {
                calc_evacuate = intermediate_calculation_result
                intermediate_calculation_result = intermediate_calculation_result / Int(input_num)!
            } else {
                intermediate_calculation_result = calc_evacuate / Int(input_num)!
            }
            break;
            
        default:
            break
        }
        
        logLabel.text = input_log
        resultLabel.text = String(intermediate_calculation_result)
        pushed_operator = false
        
    }
    
    func operatorButtonPressedCommonProcessing () {
        
        if (first_input) {
            intermediate_calculation_result = Int(input_num)!
            first_input = false
            
        } else {
            resultLabel.text = String(intermediate_calculation_result)
        }
        
        pushed_operator = true
        
    }
    
    func numericButtonPressedCommonProcessing () {
        
        if (first_input) {
            
            input_log = input_log + input_num
            logLabel.text = input_log
            
        } else {
            calc()
        }
    }
    
    func isLastTimeInputOperator () -> Bool {
        
       
         var ret:Bool = false
        
        switch input_log.suffix(1) {
        case "+":
            ret = true
            break
        case "-":
            ret = true
            break
        case "*":
            ret = true
            break
        case "/":
            ret = true
            break

        default:
            break
        }
        
        return ret
    }
}

