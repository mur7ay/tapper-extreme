//
//  ViewController.swift
//  tapper-extreme
//
//  Created by shawn murray on 11/12/15.
//  Copyright © 2015 shawn murray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // variables
    var maxTaps = 0
    var currentTaps = 0
    
    
    // outlets 
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var playButton: UIButton!

    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tabLabel: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        
        currentTaps++
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func initialDisplay(sender: UIButton!) {

        
        if textField.text != nil && textField.text != "" {
            
            logoImageView.hidden = true
            textField.hidden = true
            playButton.hidden = true
            
            tapButton.hidden = false
            tabLabel.hidden = false
            
            maxTaps = Int(textField.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
    }
    
    func restartGame() {
        maxTaps = 0
        textField.text = ""
        
        logoImageView.hidden = false
        textField.hidden = false
        playButton.hidden = false
        
        tabLabel.hidden = true
        tapButton.hidden = true
    }
    
    func isGameOver()->Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLabel() {
        tabLabel.text = "\(currentTaps) taps"
    }

}

