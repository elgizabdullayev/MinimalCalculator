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
    var error = false
    var globalerror = false
    var equals = false
    var temp : String = ""

    @IBOutlet weak var Result: UILabel!
    
    @IBAction func Calculate(_ sender: UIButton) {
        
        switch (sender.tag){
        case 100:
            if Result.text != "" {
            switch Result.text?.last!{
            case "/" , "*", "+", "-", "." :
                right = true
            default : right = false} }
            if Result.text! != "" && right == false && error == false
            {
                Result.text = Result.text! + "+"
                temp = temp + "+"
                
            }
            
        case 101:
            if Result.text != "" {
            switch Result.text?.last!{
            case "/" , "*", "+", "-", "." :
                right = true
            default : right = false} }
            if Result.text! != "" && right == false && error == false
            {
                Result.text = Result.text! + "-"
                temp = temp + "-"
                
            }
           
        case 102:
            if Result.text != "" {
            switch Result.text?.last!{
            case "/" , "*", "+", "-", "." :
                right = true
            default : right = false} }
            if Result.text! != "" && right == false && error == false
            {
                Result.text = Result.text! + "/"
                temp = temp + "/"
            }
            
        case 104:
            Result.text = ""
            temp = ""
            error = false
        case 103:
            if Result.text != "" {
            switch Result.text?.last!{
            case "/" , "*", "+", "-", "." :
                right = true
            default : right = false} }
            if Result.text! != "" && right == false && error == false
            {
                Result.text = Result.text! + "*"
                temp = temp + "*"
                
            }
            
        case 105:
            if Result.text != "" {
            switch Result.text?.last!{
            case "/" , "*", "+", "-", "." :
                right = true
            default : right = false} }
            if Result.text! != "" && right == false && error == false
            {
                Result.text = Result.text! + "."
                temp = temp + "."
            }
            
        case 107:
            if Result.text! != "" && error == false && temp != ""
            {
                Result.text!.removeLast()
                temp.removeLast()
            }
        case 106:
            
            if temp != "" {
            switch temp.last!{
            case "/" , "*", "+", "-", "." :
                equals = true
            default : equals = false} }
            if Result.text!.contains("/0"){
               if !Result.text!.contains("/0."){
                    Result.text = "Error"
                    error = true
               }}
            if error == false && equals == false && temp != "" {
            temp.insert(contentsOf: "1.0*", at: temp.startIndex)
                
            let calculate = NSExpression(format: temp)
            let result = calculate.expressionValue(with: nil, context: nil) as? Double
                
            Result.text = String(result!)
                temp = ""
                error = false
            }
            
        default:
    
            if temp != ""{
            switch temp.last!{
            case  "+", "-" :
            
                temp.insert(contentsOf: "1.0*", at: temp.endIndex)
            default: globalerror = true
            }
               
            }
            if error == false{
                Result.text = Result.text! + String(sender.tag)
            temp = temp + String(sender.tag)
             
            }
        }
        
        
    
}
}

