//
//  ViewController.swift
//  Menu Bars
//
//  Created by Victor Elizalde on 1/4/17.
//  Copyright © 2017 Victor Elizalde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var timerLabel: UILabel!
    var timer = Timer()
    var time = 210
    
    func decreaseTimer() {
        
        if time > 0 {
            
            time -= 1
            
            timerLabel.text = String(time)
            
        } else {
            
            timer.invalidate()
            
        }
        
    }

    @IBAction func playTimer(_ sender: UIBarButtonItem) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        
    }

    
    @IBAction func pauseTimer(_ sender: UIBarButtonItem) {
        
        timer.invalidate()
        
    }
    
    @IBAction func resetTimer(_ sender: UIBarButtonItem) {
        
        time = 210
        timerLabel.text = String(time)
        
    }
    
    @IBAction func plus10Timer(_ sender: UIBarButtonItem) {
        
        time += 10
        timerLabel.text = String(time)
        
    }
    
    
    @IBAction func minus10Timer(_ sender: UIBarButtonItem) {
        
        if time > 10 {
            
            time -= 10
            timerLabel.text = String(time)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
