//
//  ViewController.swift
//  Calculator
//
//  Created by student on 20.11.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Result.text = ""
        
    }
    
    var right = false
    @IBOutlet weak var Result: UILabel!
    
    @IBAction func Calculate(_ sender: UIButton) {
        
        switch (sender.tag){
        case 100:
            switch Result.text?.last!{
            case "/" , "*", "+", "-", "." :
                right = true
            default : right = false}
            if Result.text! != "" && right == false
            {
                Result.text = Result.text! + "+"
                
            }
            
        case 101:
            switch Result.text?.last!{
            case "/" , "*", "+", "-", "." :
                right = true
            default : right = false}
            if Result.text! != "" && right == false
            {
                Result.text = Result.text! + "-"
                
            }
           
        case 102:
            switch Result.text?.last!{
            case "/" , "*", "+", "-", "." :
                right = true
            default : right = false}
            if Result.text! != "" && right == false
            {
                Result.text = Result.text! + "/"
                
            }
            
        case 104:
           
            Result.text = ""
        case 103:
            switch Result.text?.last!{
            case "/" , "*", "+", "-", "." :
                right = true
            default : right = false}
            if Result.text! != "" && right == false
            {
                Result.text = Result.text! + "*"
                
            }
            
        case 105:
            switch Result.text?.last!{
            case "/" , "*", "+", "-", "." :
                right = true
            default : right = false}
            if Result.text! != "" && right == false
            {
                Result.text = Result.text! + "."
                
            }
            
        case 107:
            if Result.text! != ""
            {
                Result.text!.removeLast()}
        case 106:
            let calculate = NSExpression(format: Result.text!)
            let result = calculate.expressionValue(with: nil, context: nil) as? Double
            Result.text = String(result!)
        default:
            Result.text = Result.text! + String(sender.tag)
            if Result.text!.contains("/0"){
                Result.text = "Error"
            }
        }
        
        }
    }
