//
//  ViewController.swift
//  TimerProject
//
//  Created by Can Seyhan on 11/2/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 10

    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeLabel.text = "Time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
      
        
    }
    @objc func timerFunction(){
        
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Time is over"
        
        }
    }
        
    @IBAction func buttonClicked(_ sender: Any) {
        print("button clicked")
    }
    
}
