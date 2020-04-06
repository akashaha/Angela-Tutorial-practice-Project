//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let eggTime = ["Soft" : 240 , "Medium" : 480, "Hard" : 720]
    var totalTime = 0
    var timer = Timer()
    var secounsPassed = 0
    var player: AVAudioPlayer!
    
    
    @IBOutlet weak var progressBAr: UIProgressView!
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBAction func hardnessButton(_ sender: UIButton) {
        
        secounsPassed = 0
        
        progressBAr.progress = 0.0
        
        let hardness = sender.currentTitle!
        
        totalTime = eggTime[hardness]!
        
        textLabel.text = hardness
      //  print(totalTime)
        
        
       timer = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateTimer), userInfo:nil, repeats: true)
        
    }
    
    @objc func updateTimer(){
        if totalTime > secounsPassed {
        secounsPassed += 1
        print(secounsPassed)
        progressBAr.progress = Float(secounsPassed) / Float(totalTime)
        print(Float(secounsPassed) / Float(totalTime))
          //  print(secounsPassed)
            
        }
        
        else {
            timer.invalidate()
            
             textLabel.text = "Done!"
            
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
                       player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
    
}
