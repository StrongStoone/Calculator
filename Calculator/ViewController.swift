//
//  ViewController.swift
//  Calculator
//
//  Created by Developer on 9/28/16.
//  Copyright © 2016 Hyungsuk. All rights reserved.
//

import GoogleMobileAds
import UIKit

class ViewController: UIViewController {
  
    @IBOutlet private weak var display: UILabel!
    @IBOutlet weak var bannerView: GADBannerView!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var displayPanel: UIView!
    
    private var userIsInTheMiddleOfTyping: Bool = false
    
    @IBAction private func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            if(digit == ".") {
                if(displayValue == floor(displayValue)) {
                    display.text = textCurrentlyInDisplay + digit
                }
            }
            else {
                display.text = textCurrentlyInDisplay + digit
            }
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }
    
    private var displayValue : Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    private var brain = CalculatorBrain()
    
    
    @IBAction private func performOperation(_ sender: UIButton) {
        if userIsInTheMiddleOfTyping {
            brain.setOperand(operand: displayValue)
            userIsInTheMiddleOfTyping = false
        }
        if let mathematicalSymbol = sender.currentTitle {
            brain.performOperation(symbol: mathematicalSymbol)
        }
        displayValue = brain.result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
        for button in buttons {
            button.layer.cornerRadius = 10
        }
        displayPanel.layer.cornerRadius = 10
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

