//
//  ViewController.swift
//  Aufgabe2_PaulSprotte
//
//  Created by Paul Sprotte on 10.04.15.
//  Copyright (c) 2015 Paul Sprotte. All rights reserved.
//
import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var display: UITextField!
    
    var a : Int = 0
    var b : Int = 0
    
    var initText = true;
    var nextOperation = OperationType.Append;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Button(sender: AnyObject) {
        var digit = sender.currentTitle!!
        var str : String = display.text;
        if(initText || str == "0"){
            initText = false;
            str = digit
            a = str.toInt()!
        }
        else{
            str += digit
            a = str.toInt()!
        }
        display.text = str
    }
    
    @IBAction func Operations(sender: AnyObject) {
        switch sender.currentTitle!!{
            case "/":
                nextOperation = OperationType.Divided
                b = a;
                initText = true
            case "*":
                nextOperation = OperationType.Multiply
                b = a;
                initText = true
            case "+":
                nextOperation = OperationType.Plus
                b = a;
                initText = true
            case "-":
                nextOperation = OperationType.Minus
                b = a;
                initText = true
            case "=":
                CalculateResul(nextOperation)
            case "C":
                a = 0
                b = 0
                display.text = "0"
            default:
                println("ERROR")
        }
    }
    
    func CalculateResul(operation: OperationType){
        var result=0;
        switch operation {
            case OperationType.Plus:
                a = a + b
                display.text = String(a)
            case OperationType.Minus:
                a = b - a
                display.text = String(a)
            case OperationType.Divided:
                a = b / a
                display.text = String(a)
            case OperationType.Multiply:
                a = a * b
                display.text = String(a)
            default:
            println("ERROR")
        }
    }
    
    enum OperationType {
        case Plus, Minus, Multiply, Divided, Append
    }
}

